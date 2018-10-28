class OfferSerializer < ActiveModel::Serializer
  attributes :id, :class_letter, :shift, :enrolled_count, :max_enrolled, :credits_theory, :credits_extension,
             :credits_pratical, :credits_study, :obs1, :obs2, :obs3
  belongs_to :semester
  belongs_to :subject
end
