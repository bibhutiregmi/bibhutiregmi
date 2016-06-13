class CreateCastsFilms < ActiveRecord::Migration
  def change
    create_table :casts_films do |t|
      t.integer :film_id
      t.integer :cast_id
    end
  end
end
