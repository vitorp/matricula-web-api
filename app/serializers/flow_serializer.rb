class FlowSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :curriculum
  has_many :subjects
end
