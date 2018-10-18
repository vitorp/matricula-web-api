class AddCampusIdToDepartment < ActiveRecord::Migration[5.2]
  def change
    add_column :departments, :campus_id, :integer
  end
end
