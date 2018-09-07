class Flow < ApplicationRecord
  belongs_to :curriculum
  has_many :flow_periods, dependent: :destroy
end
