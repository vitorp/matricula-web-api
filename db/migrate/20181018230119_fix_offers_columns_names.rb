class FixOffersColumnsNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :offers, :credits_theory, :credits_of_theory
    rename_column :offers, :credits_extension, :credits_of_extension
    rename_column :offers, :credits_pratical, :credits_of_practice
    rename_column :offers, :credits_study, :credits_of_study
  end
end
