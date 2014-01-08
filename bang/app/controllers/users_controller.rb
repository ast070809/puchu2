class UsersController < ApplicationController

	def show
	end

	def edit
		@user = User.find(params[:id])
		@c = current_user.current_address
	    @p = current_user.permanent_address
	    
	    #######Current Address#######
	    if @c.nil?
	      @current_address = current_user.build_current_address
	    else
	      @current_address = @c
	    end

	    #####Permanent Address######
	    if @p.nil?
	      @permanent_address = current_user.build_permanent_address
	    else
	      @permanent_address = @p
	    end

	    #####Graduation details#######
	    @g = current_user.educations.find_by(deg_type: 'graduation')
	    if @g.nil?
	    	@gedu = current_user.educations.build
	    else
	    	@gedu = @g
	    end
	    
	    #####Post Graduation details#######
	    @pg = current_user.educations.find_by(deg_type: 'post_graduation')
	    if @pg.nil?
	    	@pgedu = current_user.educations.build
	    else
	    	@pgedu = @pg
	    end
 
	    ##### Availability details ########
	    @av_all = current_user.availabilities.to_a

	    @av = current_user.availabilities.new
	    
	end

	def update
		@user = User.find(params[:id])
		if @user.update(users_params)
			flash[:success] = 'Details updated successfully'
		else
			flash[:error] = 'Some error occured'
		end
		redirect_to edit_user_path(current_user.id)
	end

	private
	  	def users_params
	  		params.require(:user).permit(:first_name, :last_name, :dob, :gender)
	  	end

end
