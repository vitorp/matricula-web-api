class RenameFlowPeriodToFlowSubject < ActiveRecord::Migration[5.2]
  def change
    rename_table :flow_periods, :flow_subjects
  end
end
