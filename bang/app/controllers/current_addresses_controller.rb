class CurrentAddressesController < ApplicationController
	def create
		@cu = CurrentAddress.new(current_address_params)
		@cu.user_id = current_user.id
		if @cu.save
			flash[:success] = "Current Address saved successfully"
		else
			flash[:success] = "Some error occured"
		end
		redirect_to edit_user_path(current_user.id)
	end

	def update
		@cu = CurrentAddress.find_by(user_id: current_user.id)
		if @cu.update(current_address_params)
			flash[:success] = "Current Address updated successfully"
		else
			flash[:success] = "Current Address could not be updated"
		end
		redirect_to edit_user_path(current_user.id)
	end

	private
	  	def current_address_params
	  		params.require(:current_address).permit(:street_address,:city,:state,:pincode)
	  	end
end
