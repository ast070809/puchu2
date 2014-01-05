class EducationsController < ApplicationController

	def grad_edu_create
		user = current_user
		edu = user.educations.new(deg_type:'graduation', degree: params[:grad_deg], deg_time: params[:grad_time],
			subject: params[:grad_subj], year: params[:date]["grad"], college_id: 'grad_clg')
		if edu.save!
			flash[:success] = 'Graduation details saved successfully'
		else
			flash[:error] = 'Some error occured'
		end
		
		redirect_to edit_user_path(current_user.id)
	end

	def postgrad_edu_create
		user = current_user
		edu = user.educations.new(deg_type:'post_graduation', degree: params[:postgrad_deg], deg_time: params[:postgrad_time],
			subject: params[:postgrad_subj], year: params[:date]["postgrad"], college_id: 'postgrad_clg')
		if edu.save!
			flash[:success] = 'Post Graduation details saved successfully'
		else
			flash[:error] = 'Some error occured'
		end
		
		redirect_to edit_user_path(current_user.id)
	end

end
