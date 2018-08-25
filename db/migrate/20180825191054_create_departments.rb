class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :name
      t.string :initials
      t.integer :code

      t.timestamps
    end
  end
end
