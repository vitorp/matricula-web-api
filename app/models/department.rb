class Department < ApplicationRecord
  # Associations
  has_many :courses, dependent: :destroy
  has_many :subjects, dependent: :destroy
  belongs_to :campus, optional: true

  # Validations
  with_options presence: true do
    validates :name
    validates :code
    validates :initials
  end
end
