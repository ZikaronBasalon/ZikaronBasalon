class RegionsController < ApplicationController
  def index
    @regions = Region.all
  end

  def show
    @region = Region.find(params[:id])
  end

  def new
  	@region = Region.new
  end

  def create
  	Region.create(params[:region])
  end
end
