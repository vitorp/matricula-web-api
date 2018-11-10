class FlowSubject < ApplicationRecord
  # Associations
  belongs_to :flow
  belongs_to :subject

  # Validations
  validates :order, numericality: {only_integer: true}
end
