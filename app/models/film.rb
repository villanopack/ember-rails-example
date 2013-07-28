class Film < ActiveRecord::Base
  attr_accessible :categoria, :estreno, :titulo, :duration, :created_at, :url_portada, :actors
  has_and_belongs_to_many :actors
end
