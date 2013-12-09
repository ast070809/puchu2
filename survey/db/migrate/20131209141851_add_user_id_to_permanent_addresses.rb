class AddUserIdToPermanentAddresses < ActiveRecord::Migration
  def change
  	add_column :permanent_addresses, :user_id, :integer
  end
end
