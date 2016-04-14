class GuestsController < ApplicationController
  before_filter :is_admin, only: [:index]

	def show
		@guest = Guest.includes(:invites).find(params[:id])
  end

  def index
    @page = params[:page] || 1
  	@guests = Guest.page(@page).per(10)
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
end
