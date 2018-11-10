class Course < ApplicationRecord
  # Associations
  has_many :curriculums, dependent: :destroy
  belongs_to :department

  # Validations
  enum shift: {
    day:   0,
    night: 1
  }

  enum modality: {
    presential: 0,
    remote:     1
  }

  with_options presence: true do
    validates :name
    validates :code
    validates :modality
    validates :shift
    validates :degree
  end
end
