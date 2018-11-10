class CurriculumsSubject < ApplicationRecord
  # Associations
  belongs_to :curriculum
  belongs_to :subject

  # Validations
  enum enforcement: {
    required: 0,
    optional: 1
  }
  validates :enforcement, presence: true
end
