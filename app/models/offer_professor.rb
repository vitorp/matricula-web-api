class OfferProfessor < ApplicationRecord
  # Associations
  belongs_to :professor
  belongs_to :offer
end
