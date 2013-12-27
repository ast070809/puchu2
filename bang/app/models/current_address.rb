# == Schema Information
#
# Table name: current_addresses
#
#  id             :integer          not null, primary key
#  street_address :text
#  city           :string(255)
#  state          :string(255)
#  pincode        :string(255)
#  user_id        :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class CurrentAddress < ActiveRecord::Base
	validates :street_address, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :pincode, presence: true
	validates :user_id, presence: true

	belongs_to :users
end
