class OfferSerializer < ActiveModel::Serializer
  attributes :id, :class_letter, :shift, :enrolled_count, :max_enrolled, :credits_of_theory, :credits_of_extension,
             :credits_of_practice, :credits_of_study, :obs1, :obs2, :obs3
  belongs_to :semester
  belongs_to :subject
end
