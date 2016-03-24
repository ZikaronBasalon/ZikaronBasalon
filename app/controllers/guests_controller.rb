class GuestsController < ApplicationController
	def show
		@guest = Guest.find(params[:id])
  end
end
