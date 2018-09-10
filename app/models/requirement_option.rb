class RequirementOption < ApplicationRecord
  belongs_to :subject
  belongs_to :requirement
end
