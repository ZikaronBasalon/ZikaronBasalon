class InvitesController < ApplicationController
  def create
    @invite = Invite.new({
      guest_id: current_user.meta.id, 
      host_id: params[:invite][:host_id], 
      plus_ones: params[:invite][:plus_ones].to_i
    })

    if @invite.save
      render :json => { error: false }
    else
      render :json => { error: true }
    end
  end
end
