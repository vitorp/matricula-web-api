class FlowSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :curriculum
  has_many :subjects do |serializer|
    periods = {}
    serializer.object.flow_subjects.each do |flow_subject|
      periods[flow_subject.order] ||= []
      periods[flow_subject.order] << flow_subject.subject
    end
    periods
  end
end
