class PagesController < ApplicationController
  include PagesHelper
  def home
  	@hosts = Host.page(params[:page]).per(2).where(host_conditions_hash)

  	respond_to do |format|
		  format.js
		  format.html
	  end
  end
end
