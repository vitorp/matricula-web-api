class Flow < ApplicationRecord
  belongs_to :curriculum
  has_many :flow_subjects, dependent: :destroy
end
