class ApplicationController < ActionController::Base
  before_action :set_paper_trail_whodunnit
	include SessionsHelper
  protect_from_forgery
  before_filter :set_locale
  before_filter :set_fb_app
  respond_to :json, :html
  def is_admin
  	redirect_to root_path unless current_user && (current_user.any_admin?)
  end

	def correct_manager
		return redirect_to user_session_path if current_user.nil?

		meta = current_user.meta
		id = params[:id].to_i

		return if current_user.admin? || current_user.sub_admin?

		redirect_to root_path if (meta.is_a?(Manager) && meta.id != id) || !meta.is_a?(Manager)
	end

	private

	def set_locale
		I18n.locale = params[:locale]
	  I18n.locale ||= request.headers['locale'] if request.headers['locale'].present?
    # Avriel edit: added locale by cookie
    I18n.locale ||= request.cookies['locale']
		I18n.locale ||= :he

		# If locale changes, change the locale for this user in DB
		if current_user && I18n.locale.to_s != current_user.locale
			u = User.find(current_user.id)
			u.locale = I18n.locale
			u.save!
		end

	  # current_user.locale
	  # request.subdomain
	  # request.env["HTTP_ACCEPT_LANGUAGE"]
	  # request.remote_ip
	end

	def set_fb_app
		@fb_app_id = ENV['FACEBOOK_APP_ID'] || '754373994725074'
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
