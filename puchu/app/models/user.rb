class User < ActiveRecord::Base
	validates :name, presence: true, length: {maximum: 50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :email, presence: true,  format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}
	validates :password, length: {minimum: 8}

	has_secure_password
	
	before_save { self.email = email.downcase }
end