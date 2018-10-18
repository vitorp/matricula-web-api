class Department < ApplicationRecord
  has_many :courses, dependent: :destroy
  has_many :subjects, dependent: :destroy
  belongs_to :campus, optional: true
end
