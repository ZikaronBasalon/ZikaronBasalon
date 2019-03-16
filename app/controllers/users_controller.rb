class UsersController < ApplicationController
	# before_action :authenticate_user!
	def new
		@type = params[:type]
	end

	def mark_terms_agreement
		binding.pry
	end

	def assignrole
		if !params[:changerole].nil?
			user_role = RoleChanger.new(params[:id])
			if params[:changerole] == true
				user_role.change_role
				user_role.activate_user
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
