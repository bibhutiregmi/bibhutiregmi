class CreateMoviecasts < ActiveRecord::Migration
  def change
    create_table :moviecasts do |t|
      t.integer :movieid
      t.string :castid
      t.string :integer
      t.references :film, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
