class AddBibliographyToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :course_summary, :text
    add_column :courses, :bibliography, :text
    add_column :courses, :course_program, :text
  end
end
