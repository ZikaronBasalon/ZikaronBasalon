class PagesController < ApplicationController
  def home
  	@hosts = Host.all
  end
end
