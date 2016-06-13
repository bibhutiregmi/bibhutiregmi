class CreateMoviesCasts < ActiveRecord::Migration
  def change
    create_table :movies_casts do |t|
      t.integer :movie_id
      t.integer :cast_id
    end
  end
end
