class RequirementOption < ApplicationRecord
  # Associations
  belongs_to :subject
  belongs_to :requirement
end
