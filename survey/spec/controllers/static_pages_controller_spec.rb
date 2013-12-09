require 'spec_helper'

describe StaticPagesController do
	subject { page }

	describe "landing page" do 
		before { visit root_path }
		it { should have_title('Home')}
		
	end

end
