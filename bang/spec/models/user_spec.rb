# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  first_name             :string(255)
#  last_name              :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#

require 'spec_helper'

describe User do

	before { @user = User.new(first_name: "Example",last_name: "User", email: "user@example.com", 
		password: "foobar123", password_confirmation: "foobar123")}

	subject { @user }

	it { should respond_to(:first_name)}
	it { should respond_to(:last_name)}
	it { should respond_to(:email)}
	it { should respond_to(:password)}
	it { should respond_to(:password_confirmation)}

	it { should be_valid}

	describe "when first name is not present" do
		before { @user.first_name = " "}
		it { should_not be_valid }
	end
	describe "when last name is not present" do
		before { @user.last_name = " "}
		it { should_not be_valid }
	end

	describe "when email is not present" do
		before { @user.email = " "}
		it { should_not be_valid }
	end

	describe "when email format is invalid" do
		it "should be invalid" do 
			addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      		addresses.each do |invalid_address|
      			@user.email = invalid_address
      			expect(@user).not_to be_valid
      		end
		end
	end

	describe "when email format is valid" do
		it "should be valid" do
			addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
			addresses.each do |valid_address|
				@user.email = valid_address
				expect(@user).to be_valid
			end
		end
	end

	describe "when the email is already taken" do
		before do
			user_with_same_email = @user.dup
			user_with_same_email.email = @user.email.upcase
			user_with_same_email.save
		end

		it { should_not be_valid }
	end

	describe "when password is not present" do
		before { @user = User.new(first_name: "Example", last_name: "User", email: "user@example.com",
		 password: " ", password_confirmation:" " )}
		it { should_not be_valid}
	end

	describe "when passwod doesn't match confirmation" do
		before { @user.password_confirmation = "mismatch"}
		it { should_not be_valid }
	end

	describe "when password is too short" do
		before { @user.password = @user.password_confirmation = "a"*7}
		it { should be_invalid}
	end

	describe "email address with lower case" do
		let(:mixed_case_email) {"Foo@Example.com"}

		it "should be saved in lower case" do
			@user.email = mixed_case_email
			@user.save
			expect(@user.reload.email).to eq mixed_case_email.downcase
		end
	end

end
