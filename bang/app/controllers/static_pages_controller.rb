class StaticPagesController < ApplicationController

	def after_sign_out_path_for(resource_or_scope)
	  request.referrer
	end

	def opportunities
	end
end

