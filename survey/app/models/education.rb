# == Schema Information
#
# Table name: educations
#
#  id         :integer          not null, primary key
#  degree     :string(255)
#  deg_type   :string(255)
#  subject    :string(255)
#  university :string(255)
#  year       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Education < ActiveRecord::Base
	validates :degree, presence: true
	validates :deg_type, presence: true
	validates :subject, presence: true
	validates :university, presence: true
	validates :year, presence: true
end
