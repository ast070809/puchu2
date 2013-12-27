# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  city       :string(255)
#  state      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Location < ActiveRecord::Base
	validates :city, presence: true
	validates :state, presence: true
	
	has_many :colleges
end
