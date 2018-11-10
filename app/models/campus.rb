class Campus < ApplicationRecord
  # Associations
  has_many :departments, dependent: :destroy

  # Validations
  validates :name, presence: true
end
