class CurriculumsSubject < ApplicationRecord
  belongs_to :curriculum
  belongs_to :subject

  enum enforcement: {
    required: 0,
    optional: 1
  }
end
