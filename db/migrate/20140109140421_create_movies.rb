class CreateMovies < ActiveRecord::Migration
  def self.up
    create_table :movies do |t|
    	t.string "name"
    	t.string "director"
    	t.string "released_on"
    	t.string "writer"
    	t.string "director"
    	t.string "description",:limit=>2000
      t.timestamps
    end
  end
  def self.down
  	drop_table :movies
  end
end
