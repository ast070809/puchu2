# == Schema Information
#
# Table name: educations
#
#  id         :integer          not null, primary key
#  degree     :string(255)
#  deg_type   :string(255)
#  subject    :string(255)
#  year       :string(255)
#  user_id    :integer
#  college_id :integer
#  deg_time   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Education < ActiveRecord::Base
	validates :degree, presence: true
	validates :deg_type, presence: true
	validates :subject, presence: true
	validates :year, presence: true
	validates :user_id, presence: true
	validates :college_id, presence: true
	validates :deg_time, presence: true

	belongs_to :user
	belongs_to :college
end
