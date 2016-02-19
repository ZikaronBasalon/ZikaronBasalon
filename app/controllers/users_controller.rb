class UsersController < ApplicationController
	def new
		@type = params[:type]
	end
end
