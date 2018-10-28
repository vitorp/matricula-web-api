class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :code, :modality, :shift, :degree
  belongs_to :department
end
