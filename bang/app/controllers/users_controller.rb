class UsersController < ApplicationController

	def show
	end

	def edit
		@user = User.find(params[:id])
		@c = current_user.current_address
	    @p = current_user.permanent_address
	    
	    if @c.nil?
	      @current_address = current_user.build_current_address
	    else
	      @current_address = @c
	    end

	    if @p.nil?
	      @permanent_address = current_user.build_permanent_address
	    else
	      @permanent_address = @p
	    end
	end


end
