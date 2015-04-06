class MovieController < ApplicationController
  
  def new
    @movie = Movie.new
  end
  
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to :action => "list"
    else
      render :new
    end
  end
  
  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to :action => "list"
    end
  end
  
  def list
    @movies = Movie.all
    @movies_grid = initialize_grid(Movie, order: 'movies.title', order_direction: 'desc', per_page: 10)
  end
  
  def read
    @movie = Movie.find(params[:id])
  end
  
  def edit
    @movie = Movie.find(params[:id])
  end
  
  def delete
    @movie = Movie.find(params[:id])
    
    if @movie.destroy
      redirect_to :action => "list"
    end
  end
  
  def movie_params
      params.require(:movie).permit(:title, :format, :length, :release_year, :rating)
  end
  
end
