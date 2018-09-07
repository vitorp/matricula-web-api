class FlowSubject < ApplicationRecord
  belongs_to :flow
  belongs_to :subject
  validates :order, numericality: {only_integer: true}
end
