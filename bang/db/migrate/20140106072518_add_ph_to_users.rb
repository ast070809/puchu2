class AddPhToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ph, :string
  end
end
