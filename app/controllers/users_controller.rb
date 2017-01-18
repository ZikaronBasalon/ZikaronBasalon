class UsersController < ApplicationController
	def new
		@type = params[:type]
	end

	def profile
    meta = current_user.try(:active_meta)
    if meta.present?
      redirect_to polymorphic_path(meta)
    else
		  redirect_to user_session_path
    end
	end

  def create_meta
    meta =  case params[:type]
            when 'Host' then Host.new(year: ENV['CURRENT_YEAR'])
            when 'Guest' then Guest.new(year: ENV['CURRENT_YEAR'])
            else nil
            end
    
    if meta.save
      user_meta = UserMeta.new
      user_meta.user = current_user
      user_meta.meta = meta

      if user_meta.save
        return render json: { success: true, redirect_url: meta.is_a?(Host) ? edit_host_path(meta) : guest_path(meta) }
      end
    end

    render json: { success: false, errors: meta.errors }
  end
end
