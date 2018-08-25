class CreateSemesters < ActiveRecord::Migration[5.2]
  def change
    create_table :semesters do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :period
      t.integer :year

      t.timestamps
    end
  end
end
