class AddDepartmentToSubject < ActiveRecord::Migration[5.2]
  def change
    add_reference :subjects, :department, foreign_key: true
  end
end
