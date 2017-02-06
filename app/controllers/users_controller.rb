class UsersController < ApplicationController
	def new
		@type = params[:type]
	end

	def assignrole
		#TODO this can be refactored
		admin_user_id = User.where(email: "zikaronbasalon@gmail.com").first.id
		user = User.find(params[:id])
		oppisite_role = user.meta_type == "Host" ? "Guest" : "Host"
		was_ever_oppisite_role = user.previous_meta_id.present?
		if params[:changerole] == true
			if !was_ever_oppisite_role #never was oppisite role, so create new
				oppisite_role_instance = oppisite_role.constantize.create! #the guest or host
				if oppisite_role == "Host"
					oppisite_role_instance.active = true
					oppisite_role_instance.save!
					comment = "ב2016 היה מארח/ת (#{user.meta.id})"
					user.meta.comments.create!(user_id: admin_user_id, content: comment)
				elsif oppisite_role == "Guest"
					oppisite_role_instance.phone = user.meta.phone
					oppisite_role_instance.save!
					comment = "ב2016 היה מארח/ת (#{user.meta.id})"
					user.meta.comments.create!(user_id: admin_user_id, content: comment)
				end
				user.previous_meta_id = user.meta_id
				user.previous_meta_type = user.meta_type
				user.meta = oppisite_role_instance
			else #not first time, so just switch
				user.meta_type,user.previous_meta_type = user.previous_meta_type,user.meta_type #swap meta_type values using Parallel Assignment
				user.previous_meta_id,user.meta_id = user.meta_id,user.previous_meta_id #swap id values using Parallel Assignment
				if user.meta_type == "Host" #if just became host, but was guest before
					user.meta.active = true
					user.meta.save!
					comment = "ב2016 היה מארח/ת (#{user.meta.id})"
					user.meta.comments.create!(user_id: admin_user_id, content: comment)
				elsif user.meta_type == "Guest"
					previous_host = Host.find(user.previous_meta_id)
					user.meta.phone = previous_host.phone
					user.meta.save!
					comment = "ב2016 היה מארח/ת (#{user.meta.id})"
					previous_host.comments.create!(user_id: admin_user_id, content: comment)
					previous_host.save!

				end
			end
		end
		user.active_this_year = true
		user.save!
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
