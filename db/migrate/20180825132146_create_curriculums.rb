class CreateCurriculums < ActiveRecord::Migration[5.2]
  def change
    create_table :curriculums do |t|
      t.integer :credits_needed
      t.integer :min_credits_per_period
      t.integer :max_credits_per_period
      t.integer :min_periods
      t.integer :max_periods
      t.integer :max_credits_free_module

      t.timestamps
    end
  end
end
