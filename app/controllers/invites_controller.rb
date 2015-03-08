class InvitesController < ApplicationController
  def show
  	@invite = Invite.find(params[:id])
  	@invite.update_attributes(confirmed: true)
  	RequestMailer.delay.request_was_confirmed(@invite.host.id,@invite.guest.id)
  end
end
