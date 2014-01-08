class EducationsController < ApplicationController

	def create
		edu = current_user.educations.new(educations_params)
		if edu.save
			flash[:success] = 'Details saved successfully'
		else
			flash[:error] = 'Some error occured'
		end
		redirect_to edit_user_path(current_user.id)
	end

	def update
		edu = current_user.educations.find_by(deg_type: params[:education]['deg_type'])
		if edu.update(educations_params)
			flash[:success] = 'Details updated successfully'
		else
			flash[:error] = 'Some error occured'
		end
		redirect_to edit_user_path(current_user.id)
	end

	private
	  	def educations_params
	  		params.require(:education).permit(:deg_type, :deg_time, :year, :subject, :college_id, :degree)
	  	end

end
