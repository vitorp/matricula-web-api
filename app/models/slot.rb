class Slot < ApplicationRecord
  # Associations
  belongs_to :offer

  # Validations
  with_options presence: true do
    validates :location
    validates :weekday
    validates :start_time
    validates :end_time
  end
end
