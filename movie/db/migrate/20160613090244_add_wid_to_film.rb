class AddWidToFilm < ActiveRecord::Migration
  def change
    add_column :films, :uid, :integer
  end
end
