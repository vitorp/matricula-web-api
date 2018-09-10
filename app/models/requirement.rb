# A subject requirement is fullfilled by a student when one of it's optional subjects is fullfilled
# and all requirements need to be fullfilled for a subject to be available

class Requirement < ApplicationRecord
  belongs_to :subject
  has_many :requirement_options, dependent: :destroy
  has_many :optional_subjects, through: :requirement_options, source: :subject
end
