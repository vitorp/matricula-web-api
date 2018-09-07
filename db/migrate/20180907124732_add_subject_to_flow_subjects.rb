class AddSubjectToFlowSubjects < ActiveRecord::Migration[5.2]
  def change
    add_reference :flow_subjects, :subject, foreign_key: true
  end
end
