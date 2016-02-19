class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
  	return edit_polymorphic_path(resource.meta)
    '/' # Or :prefix_to_your_route
  end
end