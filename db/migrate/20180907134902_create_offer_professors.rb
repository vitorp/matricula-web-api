class CreateOfferProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :offer_professors do |t|
      t.references :professor, foreign_key: true
      t.references :offer, foreign_key: true

      t.timestamps
    end
  end
end
