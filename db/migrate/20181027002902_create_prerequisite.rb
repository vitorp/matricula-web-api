class CreatePrerequisite < ActiveRecord::Migration[5.2]
  def change
    create_table :prerequisites, id: false do |t|
      t.integer :course_id
      t.integer :prerequisite_id
    end

    add_index(:prerequisites, [:course_id, :prerequisite_id], :unique => true)
    add_index(:prerequisites, [:prerequisite_id, :course_id], :unique => true)
  end
end
