require 'spec_helper'

describe "AuthenticationPages" do
  subject { page }

  describe "Sign in page" do
  	before { visit new_user_session_path }
  	it { should have_content('Login')}
  	it { should have_title('Login')}
  end

  describe "signin" do
    before { visit new_user_session_path}
  	
  	describe "with invalid information" do
  		before { click_button "Sign in" }
      it { should have_title('Login') }
  	end

  	describe "with valid information" do
  		let(:user) {FactoryGirl.create(:user)}

  		before do
  			fill_in "user[email]", with: user.email.upcase
  			fill_in "user[password]", with: user.password
  			click_button "Sign in"
  		end

  		it { should have_link('Sign out', href: destroy_user_session_path)}
  		it { should_not have_link('Sign in', href: new_user_session_path)}
  	end
  end

end
