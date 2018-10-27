class Course < ApplicationRecord
  has_many :curriculums, dependent: :destroy
  belongs_to :department
  has_and_belongs_to_many :prerequisites,
            class_name: "Course",
            join_table: :prerequisites,
            foreign_key: :course_id,
            association_foreign_key: :prerequisite_id

  enum shift: {
    day:   0,
    night: 1
  }

  enum modality: {
    presential: 0,
    remote:     1
  }
end
