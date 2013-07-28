class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :titulo
      t.string :categoria
      t.boolean :estreno

      t.timestamps
    end
  end
end
