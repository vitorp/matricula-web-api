class CreateFlowPeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :flow_periods do |t|
      t.integer :order

      t.timestamps
    end
  end
end
