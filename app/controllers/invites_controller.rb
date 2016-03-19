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

  def update
    @invite = Invite.find(params[:id])
    @invite.update_attributes(params[:invite])
    render :json => Invite.where(host_id: @invite.host.id)
                          .to_json(:include => { guest: { :include => :user }})
  end
end
