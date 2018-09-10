class Professor < ApplicationRecord
  has_many :offer_professors, dependent: :destroy
  has_many :offers, through: :offer_professors
end
