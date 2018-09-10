class Semester < ApplicationRecord
  has_many :offers, dependent: :destroy
end
