class AddDepartmentToCourse < ActiveRecord::Migration[5.2]
  def change
    add_reference :courses, :department, foreign_key: true
  end
end
