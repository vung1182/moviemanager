class CreateCollectionsMovies < ActiveRecord::Migration
  def change
    create_table :collections_movies do |t|
      t.references :movie
      t.references :collection
    end
  end
end
