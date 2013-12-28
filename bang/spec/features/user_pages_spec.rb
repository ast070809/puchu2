require 'spec_helper'

describe "UserPages" do
	let(:user) { FactoryGirl.create(:user)}
	
	before {visit edit_user_path(user.id)}
	subject{ page }

	it { should have_title('Edit')}
	
	describe "current address with valid information" do
		before do
			fill_in "current_address[street_address]", with: "Example street address"
			fillin "current_address[city]", with: "Example city"
			fill_in "current_address[state]", with: "Example State"
			fill_in "current_address[pincode]", with: "800000"
	  	end
	  	it "should create an address" do
        	expect { click_button submit }.to change(CurrentAddress, :count).by(1)
      end
	end
end