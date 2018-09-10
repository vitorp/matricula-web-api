class CreateRequirementOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :requirement_options do |t|
      t.references :subject, foreign_key: true
      t.references :requirement, foreign_key: true

      t.timestamps
    end
  end
end
