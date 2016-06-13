class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :name
      t.integer :duration
      t.integer :rating
      t.string :genre
      t.references :cast, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
