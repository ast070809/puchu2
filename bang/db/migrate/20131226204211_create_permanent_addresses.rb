class CreatePermanentAddresses < ActiveRecord::Migration
  def change
    create_table :permanent_addresses do |t|
      t.text :street_address
      t.string :city
      t.string :state
      t.string :pincode
      t.integer :user_id

      t.timestamps
    end
  end
end
