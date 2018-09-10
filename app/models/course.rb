class Course < ApplicationRecord
  has_many :curriculums, dependent: :destroy
  belongs_to :department

  enum shift: {
    day:   0,
    night: 1
  }

  enum modality: {
    presential: 0,
    remote:     1
  }
end
