class CreateRequirements < ActiveRecord::Migration[5.2]
  def change
    create_table :requirements do |t|
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
