class UsersController < ApplicationController
	# before_action :authenticate_user!
	def new
		@type = params[:type]
	end

	def mark_terms_agreement
		user = User.find_by(email: user_params[:email].downcase) if user_params[:email].present?
		if user.present? && user.valid_password?(user_params[:password])
			user.update(agreed_to_terms_at: Time.now, subscribed_to_marketing: true)
	    sign_in user
	  end
	  render json: { user: user, redirectLink: "/#{I18n.locale}/#{user.meta_type.downcase}s/#{user.meta_id}" }, status: :ok
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
			user = user_role.reload_user
			render json: { user: user, redirectLink: "/#{I18n.locale}/#{user.meta_type.downcase}s/#{user.meta_id}" }, status: 201
		end

	end

	def profile
		if current_user.nil? || current_user.meta.nil?
			redirect_to user_session_path
		else
			redirect_to polymorphic_path(current_user.meta)
		end
	end

	private

	def user_params
    params.require(:user).permit(:email, :password)
  end
end
