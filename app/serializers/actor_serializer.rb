class ActorSerializer < ActiveModel::Serializer
  attributes :id, :nombre, :apellido, :nacionalidad, :fecha_nacimiento, :url_pefil
end
