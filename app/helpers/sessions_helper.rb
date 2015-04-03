module SessionsHelper
	def sign_in(user)
		cookies.permanent[:remember_token] = user.phone
		self.current_user = user
	end

	def sign_out
		self.current_user = nil
		cookies.delete(:remember_token)
	end

	def signed_in?
		!current_user.nil?
	end

	def admin?
		current_user.try(:admin?)
	end

	def current_user=(user)
		@current_user = user
	end

	def current_user
		@current_user ||= Host.find_by_phone(cookies[:remember_token])
	end

	def current_user?(user)
		user == current_user
	end
end
