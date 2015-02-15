class GuestsController < ApplicationController
	before_filter :basic_auth, only: [:index]
  def index
    @guests = Guest.all
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username,password|
      if username == "zikaron" && password == "1234.com"
        session[:auth] = "basic"
        return true
      elsif username == "zbadmin" && password == "bbznot"
        session[:auth] = "extended"
        return true
      end
      return false
    end
  end
end
