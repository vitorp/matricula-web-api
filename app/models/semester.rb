class Semester < ApplicationRecord
  # Associations
  has_many :offers, dependent: :destroy
  has_many :subjects, through: :offers

  # Validations
  with_options presence: true do
    validates :start_date
    validates :end_date
    validates :period
    validates :year
  end
end
