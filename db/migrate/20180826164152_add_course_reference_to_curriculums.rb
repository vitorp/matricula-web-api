class AddCourseReferenceToCurriculums < ActiveRecord::Migration[5.2]
  def change
    add_reference :curriculums, :course, foreign_key: true
  end
end
