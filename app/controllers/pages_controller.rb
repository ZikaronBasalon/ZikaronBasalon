class PagesController < ApplicationController
  def home
  	@hosts = Host.where("strangers = ?",true)
  	@guest = session[:guest_id] ? Guest.find(session[:guest_id]) : Guest.new
  	@invites = @guest.invites.map(&:host_id)
  end
end
