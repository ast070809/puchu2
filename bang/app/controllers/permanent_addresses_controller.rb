class PermanentAddressesController < ApplicationController
	def create
		@perad = PermanentAddress.new(permanent_address_params)
		@perad.user_id = current_user.id
		if @perad.save
			flash[:success] = "Current Address saved successfully"
		else
			flash[:success] = "Some error occured"
		end
		redirect_to edit_user_path(current_user.id)
	end

	def update
		@perad = PermanentAddress.find_by(user_id: current_user.id)
		if @perad.update(permanent_address_params)
			flash[:success] = "Current Address updated successfully"
		else
			flash[:success] = "Current Address could not be updated"
		end
		redirect_to edit_user_path(current_user.id)
	end

	private
	  	def permanent_address_params
	  		params.require(:permanent_address).permit(:street_address,:city,:state,:pincode)
	  	end

end
