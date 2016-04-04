class UsersController < ApplicationController
	def new
		@type = params[:type]
	end

	def profile
		if current_user.nil? || current_user.meta.nil?
			redirect_to user_session_path
		else
			redirect_to polymorphic_path(current_user.meta)
		end
	end
end
