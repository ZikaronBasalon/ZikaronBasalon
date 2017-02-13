class UsersController < ApplicationController
	def new
		@type = params[:type]
	end

	def assignrole
		if params[:changerole].present?
			user_role = Role.new(params[:id])
			if params[:changerole] == true
				user_role.change_role
			else
				user_role.activate_user
				user_role.activate_role
			end
			render json: user_role.reload_user, status: 201
		end

	end

	def profile
		if current_user.nil? || current_user.meta.nil?
			redirect_to user_session_path
		else
			redirect_to polymorphic_path(current_user.meta)
		end
	end
end
