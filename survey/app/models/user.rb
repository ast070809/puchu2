# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#  remember_token  :string(255)
#  dob             :date
#

class User < ActiveRecord::Base
	validates :name, presence: true, length: {maximum: 50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :email, presence: true,  format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}
	validates :password, length: {minimum: 8}

	has_secure_password

  has_one :current_address
  has_one :permanent_address
  has_many :educations
  has_many :availabilities
	
	before_save { self.email = email.downcase }
    before_create :create_remember_token

	def User.new_remember_token
    	SecureRandom.urlsafe_base64
  	end
  	
  	def User.encrypt(token)
    	Digest::SHA1.hexdigest(token.to_s)
  	end

  	private
  		def create_remember_token
      		self.remember_token = User.encrypt(User.new_remember_token)
    	end
end
