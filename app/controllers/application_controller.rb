class ApplicationController < ActionController::Base
	include SessionsHelper
  protect_from_forgery
  before_filter :set_locale
  respond_to :json, :html

  def is_admin
  	redirect_to root_path unless current_user.admin? || current_user.sub_admin?
  end

	private

	def set_locale
	  I18n.locale = params[:locale] if params[:locale].present?
	  I18n.locale ||= request.headers['locale'] if request.headers['locale'].present?
	  I18n.locale ||= :he
	  # current_user.locale
	  # request.subdomain
	  # request.env["HTTP_ACCEPT_LANGUAGE"]
	  # request.remote_ip
	end

	def default_url_options(options = {})
	  {locale: I18n.locale}
	end

	def mailer_default_url_options
    ActionMailer::Base.default_url_options[:locale] = :he
  end

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
