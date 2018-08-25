class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.string :class_letter
      t.integer :shift
      t.integer :enrolled_count
      t.integer :max_enrolled
      t.integer :credits_theory
      t.integer :credits_extension
      t.integer :credits_pratical
      t.integer :credits_study
      t.boolean :obs1
      t.boolean :obs2
      t.boolean :obs3

      t.timestamps
    end
  end
end
