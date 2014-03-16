class PagesController < ApplicationController
  def home
  	@hosts = Host.all
  	@guest = session[:guest_id] ? Guest.find(session[:guest_id]) : Guest.new
  end
end
