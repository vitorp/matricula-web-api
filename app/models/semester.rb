class Semester < ApplicationRecord
  # Associations
  has_many :offers, dependent: :destroy
  has_many :subjects, through: :offers

  # Validations
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :period, presence: true
  validates :year, presence: true
end
