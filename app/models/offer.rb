class Offer < ApplicationRecord
  belongs_to :subject
  belongs_to :semester
  has_many :offer_professors, dependent: :destroy
  has_many :professors, through: :offer_professors

  enum shift: {
    day:   0,
    night: 1
  }
end
