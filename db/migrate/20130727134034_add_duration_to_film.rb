class AddDurationToFilm < ActiveRecord::Migration
  def change
    add_column :films, :duration, :integer
  end
end
