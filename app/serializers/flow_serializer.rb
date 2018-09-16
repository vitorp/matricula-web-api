class FlowSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :curriculum
end
