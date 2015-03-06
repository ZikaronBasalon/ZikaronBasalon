class PagesController < ApplicationController
  include PagesHelper
  def home
  	@hosts = Host.page(params[:page]).per(10).where(host_conditions_hash)
  	@guest = session[:guest_id] ? Guest.find(session[:guest_id]) : Guest.new
  	@invites = @guest.invites.map(&:host_id)

  	respond_to do |format|
		  format.js
		  format.html
	  end
  end
end
