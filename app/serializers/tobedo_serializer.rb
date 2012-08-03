class TobedoSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :done
end
