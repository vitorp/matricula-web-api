class OfferProfessor < ApplicationRecord
  belongs_to :professor
  belongs_to :offer
end
