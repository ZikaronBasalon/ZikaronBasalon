class ApplicationController < ActionController::Base
	include SessionsHelper
  protect_from_forgery
  before_filter :set_locale

  def signed_in_user
   unless signed_in?
    redirect_to signin_path
   end
  end

	private

	def set_locale
	  I18n.locale = params[:locale] if params[:locale].present?
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
end
