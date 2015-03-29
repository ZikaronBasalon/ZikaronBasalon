class InvitesController < ApplicationController
	before_filter :basic_auth, only: [:index]
  def show
  	@invite = Invite.find(params[:id])
  	@invite.update_attributes(confirmed: true)
  	RequestMailer.delay.request_was_confirmed(@invite.host.id,@invite.guest.id)
  end

  def reject
  	@invite = Invite.find(params[:id])
  	@invite.update_attributes(confirmed: nil)
  	RequestMailer.delay.request_was_rejected(@invite.host.id,@invite.guest.id)
  end

  def index
  	@invites = Invite.where(confirmed: nil).order(:created_at).all
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
      request_http_basic_authentication
    end
  end
end
