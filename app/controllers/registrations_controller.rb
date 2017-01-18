class RegistrationsController < Devise::RegistrationsController
	respond_to :html, :json

	def create
    @resource = Manager.where('lower(temp_email) = ?', user_attributes[:email].downcase).first

    if @resource 
      @resource.user_attributes = user_attributes
    else 
      if user_attributes[:type] == 'guest'
         @resource = Guest.new({ user_attributes: user_attributes, phone: params[:phone] , year: ENV['CURRENT_YEAR']})
      else
         @resource = Host.new({ user_attributes: user_attributes, year: ENV['CURRENT_YEAR'] })
      end
    end

    if @resource.save
      user_meta = UserMeta.new 
      user_meta.user = @resource.user
      user_meta.meta = @resource

      if user_meta.save
        sign_up("user", @resource.user)
        return render json: { success: true, redirect_url: after_sign_up_path_for(@resource) }
      end
    end

    render json: { success: false, errors: @resource.errors }
  end

  protected

  def user_attributes
    params[:user]
  end

  def after_sign_up_path_for(resource)
  	return edit_polymorphic_path(resource, locale: nil) if resource.is_a?(Host)
		return polymorphic_path(resource, locale: nil) if resource.is_a?(Manager)
    '/' # Or :prefix_to_your_route
  end
end