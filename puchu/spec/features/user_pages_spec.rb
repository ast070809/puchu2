require 'spec_helper'

describe "UserPages" do
	subject { page }
	describe "signup page" do
		before { visit signup_path }
		
		let(:submit) { "Create my account"}
		let(:base_title) { "Puchu" }

		describe "with invalid information" do
			it "should not creat a new user" do
				expect {click_button submit}.not_to change(User, :count)
			end
		end

		describe "with valid information" do 
			before do 
				fill_in "Name" , with: "Example user"
				fill_in "Email", with: "user@example.com"
				fill_in "Password", with: "foobar123"
				fill_in "Password confirmation", with: "foobar123"
			end
		
			it "should create a user"do
				expect {click_button submit}.to change(User, :count).by(1)
			end
		end
		it { should have_content('Sign up')}
		it { should have_title("Puchu | Sign up")}
	end
	
end

