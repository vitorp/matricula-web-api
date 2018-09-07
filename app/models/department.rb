class Department < ApplicationRecord
  has_many :courses, dependent: :destroy
  has_many :subjects, dependent: :destroy
end
