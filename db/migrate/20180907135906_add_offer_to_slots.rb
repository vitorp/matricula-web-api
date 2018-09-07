class AddOfferToSlots < ActiveRecord::Migration[5.2]
  def change
    add_reference :slots, :offer, foreign_key: true
  end
end
