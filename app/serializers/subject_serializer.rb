class SubjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :code, :level
  belongs_to :department
end
