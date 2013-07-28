class CreateFilmsActors < ActiveRecord::Migration

  def change
    create_table :actors do |t|
      t.string :nombre
      t.string :apellido
      t.string :nacionalidad
      t.string :url_pefil
      t.date :fecha_nacimiento
      t.timestamps
    end

    create_table :actors_films do |t|
      t.belongs_to :actor
      t.belongs_to :film
    end

    add_index :actors_films, :actor_id
    add_index :actors_films, :film_id
    add_index :actors_films, [:actor_id, :film_id], :unique => true
  end
end
