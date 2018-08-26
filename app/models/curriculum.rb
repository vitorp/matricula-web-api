class Curriculum < ApplicationRecord
  belongs_to :course
  has_many :curriculums_subjects, dependent: :destroy
  has_many :subjects, through: :curriculums_subjects do
    def required
      where('curriculums_subjects.enforcement': :required)
    end

    def optional
      where('curriculums_subjects.enforcement': :optional)
    end
  end
end
