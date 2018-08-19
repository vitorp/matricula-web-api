class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :code
      t.integer :modality
      t.integer :shift
      t.string :degree

      t.timestamps
    end
  end
end
