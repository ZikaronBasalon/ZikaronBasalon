class GuestsController < ApplicationController
	def show
		@guest = Guest.includes(:invites).find(params[:id])
  end
end
