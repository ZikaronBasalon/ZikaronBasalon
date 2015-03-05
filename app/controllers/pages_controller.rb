class PagesController < ApplicationController
  def home
  	h = { }
		h[:strangers] = true
		@is_city = !params[:city_id].blank?
		h[:city_id] = params[:city_id] if @is_city
  	@hosts = Host.page(params[:page]).per(10).where(h)
  	@guest = session[:guest_id] ? Guest.find(session[:guest_id]) : Guest.new
  	@invites = @guest.invites.map(&:host_id)

  	respond_to do |format|
		  format.js
		  format.html
	  end
  end
end
