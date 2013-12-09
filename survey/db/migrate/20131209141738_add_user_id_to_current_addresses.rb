class AddUserIdToCurrentAddresses < ActiveRecord::Migration
  def change
  	add_column :current_addresses, :user_id, :integer
  end
end
