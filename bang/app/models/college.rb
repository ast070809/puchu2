# == Schema Information
#
# Table name: colleges
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  location_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class College < ActiveRecord::Base
	validates :name, presence: true
	
	has_many :educations
	belongs_to :locations
end
