class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.text :name
      t.belongs_to :movie, index: true
    end
  end
end
