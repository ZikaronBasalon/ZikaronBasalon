class UsersController < ApplicationController
	def new
		@type = params[:type]
	end

	def assignrole
		user_role = Role.new(params[:id]).change_role
		
		if user_role == false then
			render json: {status: "failed changing role"}, status: 401
		else
			render json: user_role, status: 201
	end

	def profile
		if current_user.nil? || current_user.meta.nil?
			redirect_to user_session_path
		else
			redirect_to polymorphic_path(current_user.meta)
		end
	end
end
