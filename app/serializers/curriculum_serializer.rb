class CurriculumSerializer < ActiveModel::Serializer
  attributes :id, :min_credits_per_period, :max_credits_per_period, :min_periods, :max_periods, :credits_needed,
             :max_credits_free_module
  belongs_to :course
end
