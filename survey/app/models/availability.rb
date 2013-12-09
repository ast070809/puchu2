# == Schema Information
#
# Table name: availabilities
#
#  id         :integer          not null, primary key
#  from       :date
#  to         :date
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Availability < ActiveRecord::Base
	validates :from, presence: true
	validates :to, presence: true
end
