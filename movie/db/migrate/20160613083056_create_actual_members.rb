class CreateActualMembers < ActiveRecord::Migration
  def change
    create_table :actual_members do |t|
      t.text :sex
      t.text :name
      t.integer :age
      t.references :cast, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
