class Professor < ApplicationRecord
  # Associations
  has_many :offer_professors, dependent: :destroy
  has_many :offers, through: :offer_professors

  # Validations
  validates :name, presence: true
end
