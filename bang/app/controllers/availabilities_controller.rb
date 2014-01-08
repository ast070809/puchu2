class AvailabilitiesController < ApplicationController

	def create
		c = current_user.availabilities.new(availability_params)
		if c.save
			flash[:success] = 'Details saved successfully'
		else
			flash[:error] = 'Some error occured'
		end
		redirect_to edit_user_path(current_user.id)
	end

	def delete_availability
		av = Availability.find(params[:id])
		if av.destroy
			flash[:success] = 'Availability deleted successfully'
		else
			flash[:error] = 'Some error occured'
		end
		redirect_to edit_user_path(current_user.id)
	end

	private
	  	def availability_params
	  		params.require(:availability).permit(:from, :to, :interest, :region, :city)
	  	end	
end