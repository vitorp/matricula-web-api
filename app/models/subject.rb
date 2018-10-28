class Subject < ApplicationRecord
  has_many :curriculums_subjects, dependent: :destroy
  has_many :curriculums, through: :curriculums_subjects
  has_many :requirements, dependent: :destroy
  has_many :offers, dependent: :destroy
  has_many :semesters, through: :offers
  belongs_to :department

  enum level: {
    graduation: 0
  }
end
