class FlowPeriod < ApplicationRecord
  belongs_to :flow
  validates :order, numericality: {only_integer: true}
end
