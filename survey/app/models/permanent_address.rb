# == Schema Information
#
# Table name: permanent_addresses
#
#  id             :integer          not null, primary key
#  street_address :text
#  city           :string(255)
#  state          :string(255)
#  pincode        :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  user_id        :integer
#

class PermanentAddress < ActiveRecord::Base
	validates :street_address, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :pincode, presence: true
end
