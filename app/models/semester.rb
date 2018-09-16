class Semester < ApplicationRecord
  has_many :offers, dependent: :destroy
  has_many :subjects, through: :offers
end
