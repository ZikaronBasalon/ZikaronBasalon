class UsersController < ApplicationController
	def new
		@type = params[:type]
	end

	def assignrole
		user = User.find(params[:id])

		# byebug
		if params[:newrole] == "Guest" && user.host?
			if !user.previous_meta_id.nil? && !user.previous_meta_type.nil?
				current_meta_id = user.meta_id
				current_meta_type = user.meta_type
				guest = Guest.find(user.previous_meta_id)
				user.meta_id = user.previous_meta_id
				user.meta_type = user.previous_meta_type
				user.meta = guest
				user.previous_meta_id = current_meta_id
				user.previous_meta_type = current_meta_type
				user.save!
			else
				guest = Guest.create
				guest.name = user.full_name
				guest.email = user.email
				guest.save!
				user.previous_meta_id = user.meta_id
				user.previous_meta_type = user.meta_type
				user.meta_type = "Guest"
				user.meta_id = guest.id
				user.meta = guest
				user.save!
			end
		elsif params[:newrole] == "Host" && user.guest?
			if !user.previous_meta_id.nil? && !user.previous_meta_type.nil?
				current_meta_id = user.meta_id
				current_meta_type = user.meta_type
				host = Host.find(user.previous_meta_id)
				user.meta_id = user.previous_meta_id
				user.meta_type = user.previous_meta_type
				user.meta = host
				user.previous_meta_id = current_meta_id
				user.previous_meta_type = current_meta_type
				user.save!
			else
				host = Host.create
				host.save!
				user.previous_meta_id = user.meta_id
				user.previous_meta_type = user.meta_type
				user.meta_id = host.id
				user.meta_type = "Host"
				user.meta = host
				user.save!
			end
		end
			render json: user, status: 201
	end

	def profile
		if current_user.nil? || current_user.meta.nil?
			redirect_to user_session_path
		else
			redirect_to polymorphic_path(current_user.meta)
		end
	end
end
