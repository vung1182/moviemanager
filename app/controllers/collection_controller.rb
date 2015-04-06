class CollectionController < ApplicationController
  def new
    @collection = Collection.new
  end
  
  def list
    @collections = Collection.all
    @collections_grid = initialize_grid(Collection, order: 'collections.name', order_direction: 'desc', per_page: 10)
  end
  
  def create
    @collection = Collection.new(collection_params)
    if @collection.save
      redirect_to :action => "list"
    else
      render :new
    end
  end
  
  def read
    @collection = Collection.find(params[:id])
    @movies_collection_grid = initialize_grid(@collection.movies, order_direction: 'desc', per_page: 10)
  end
    
  def edit
    @collection = Collection.find(params[:id])
    @collection_id = params[:id]
    @collection_movies = @collection.movies
    @ids_to_exclude = Array.new
    @collection_movies.each do |p|
      @ids_to_exclude << p['id']
    end   
    @array_without_excluded_ids = Movie.where.not(id: @ids_to_exclude)
    @movies_grid = initialize_grid(@array_without_excluded_ids, order: 'movies.title', order_direction: 'desc', per_page: 10)
    @movies_collection_grid = initialize_grid(@collection.movies, order_direction: 'desc', per_page: 10)
    
  end
  
  def add_to_collection
    @collection = Collection.find(params[:collection_id])
    @movie = Movie.find(params[:movie_id])
    @collection.movies << @movie
    redirect_to :action => "edit", :id => params[:collection_id]
  end
  
  def remove_movie
    @collection = Collection.find(params[:collection_id])
    @movie = Movie.find(params[:movie_id])
    @collection.movies.delete(@movie)
    redirect_to :action => "edit", :id => params[:collection_id]
  end
  
  
  def delete
    @collection = Collection.find(params[:id])
      
    if @collection.delete
      redirect_to :action => "list"
    end
  end
  
  def delete
    @collection = Movie.find(params[:id])
    if @collection.destroy
      redirect_to :action => "list"
    end
  end
  
  def collection_params
    params.require(:collection).permit(:name)
  end
end
