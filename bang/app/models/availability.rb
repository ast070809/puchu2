# == Schema Information
#
# Table name: availabilities
#
#  id         :integer          not null, primary key
#  from       :date
#  to         :date
#  interest   :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Availability < ActiveRecord::Base
	validates :from, presence: true
	validates :to, presence: true
	
	belongs_to :user
end
