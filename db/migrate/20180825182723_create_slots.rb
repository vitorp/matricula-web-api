class CreateSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :slots do |t|
      t.string :location
      t.integer :weekday
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
