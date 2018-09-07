class CreateFlows < ActiveRecord::Migration[5.2]
  def change
    create_table :flows do |t|
      t.references :curriculum, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
