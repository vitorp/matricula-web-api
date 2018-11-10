class Offer < ApplicationRecord
  # Associations
  belongs_to :subject
  belongs_to :semester
  has_many :offer_professors, dependent: :destroy
  has_many :professors, through: :offer_professors

  # Validations
  enum shift: {
    day:   0,
    night: 1
  }

  with_options presence: true do
    validates :class_letter
    validates :shift
    validates :enrolled_count
    validates :max_enrolled
    validates :credits_of_theory
    validates :credits_of_extension
    validates :credits_of_practice
    validates :credits_of_study
    validates :obs1
    validates :obs2
    validates :obs3
  end
end
