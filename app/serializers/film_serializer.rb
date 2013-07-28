class FilmSerializer < ActiveModel::Serializer
  attributes :id, :titulo, :categoria, :estreno, :created_at, :duration, :url_portada #, :actors
  has_many :actors, embed: :objects
end

