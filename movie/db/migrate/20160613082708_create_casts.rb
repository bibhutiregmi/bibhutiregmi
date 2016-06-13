class CreateCasts < ActiveRecord::Migration
  def change
    create_table :casts do |t|
      t.text :name
      t.integer :age
      t.text :sex
      t.text :role
      t.references :film, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
