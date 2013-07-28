class AddUrlPortadaToFilm < ActiveRecord::Migration
  def change
    add_column :films, :url_portada, :string
  end
end
