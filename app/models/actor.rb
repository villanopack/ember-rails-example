class Actor < ActiveRecord::Base
  attr_accessible :nombre, :apellido, :nacionalidad, :fecha_nacimiento, :url_pefil, :films
  has_and_belongs_to_many :films
end
