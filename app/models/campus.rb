class Campus < ApplicationRecord
  has_many :departments, dependent: :destroy
end
