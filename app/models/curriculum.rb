class Curriculum < ApplicationRecord
  # Associations
  belongs_to :course
  has_many :curriculums_subjects, dependent: :destroy
  has_many :subjects, through: :curriculums_subjects do
    def required
      where(curriculums_subjects: {enforcement: :required})
    end

    def optional
      where(curriculums_subjects: {enforcement: :optional})
    end
  end

  # Validations
  with_options presence: true do
    validates :credits_needed
    validates :min_credits_per_period
    validates :max_credits_per_period
    validates :min_periods
    validates :max_periods
    validates :max_credits_free_module
  end

end
