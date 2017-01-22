class GuestsController < ApplicationController
  before_filter :is_admin, only: [:index]
  before_filter :correct_guest, only: [:show]

	def show
		@guest = Guest.includes(:invites).find(params[:id])
  end

  def index
    @page = params[:page] || 1

    if !params[:query].present?
  	 @guests = Guest.includes(:user, :invites).page(@page).per(10)
    else
      @guests = Guest.includes(:user, :invites).all.select { |g| 
        guest_in_query(g, params[:query])
      }

      @guests = paginate(@guests, @page)
    end
    @total_guests = @guests.total_count

    respond_to do |format|
      format.html
      format.json { 
        render :json => {
          guests:  @guests.to_json(:include => [:user, :invites]),
          total_guests: @total_guests,
          page: @page
        }
      }
    end
  end

  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy
    render :json => { success: true, guest: @guest }
  end

  def paginate(arr_name, page)
    unless arr_name.kind_of?(Array)
      arr_name = arr_name.page(page).per(20)
    else
      arr_name = Kaminari.paginate_array(arr_name).page(page).per(20)
    end
    arr_name
  end

  def guest_in_query(g, query)
    return true if !query.present?
    
    (g.user && g.user.full_name.include?(query)) ||
    (g.user && g.user.email.include?(query))
  end

  def correct_guest
    return if current_user && (current_user.admin? || current_user.sub_admin?)

    redirect_to user_session_path unless current_user.guests.any? {|guest| guest.id == params[:id].to_i}
    # redirect_to user_session_path if meta.is_a?(Manager) && !meta.hosts.pluck(:id).include?(id)
  end
end
