class AddFlowReferenceToFlowPeriods < ActiveRecord::Migration[5.2]
  def change
    add_reference :flow_periods, :flow, foreign_key: true
  end
end
