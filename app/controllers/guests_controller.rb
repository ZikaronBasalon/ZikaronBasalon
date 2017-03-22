class GuestsController < ApplicationController
  # before_action :authenticate_user!
  before_filter :is_admin, only: [:index]
  before_filter :correct_guest
  if current_user.nil?
    redirect_to root_path
    return false
  end
, only: [:show]

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

  def update
    @guest=Guest.find(params[:id])
    if params[:deactivate]
      @guest.user.active_this_year=false
      @guest.user.save!
    end
    @guest.update_attributes(params[:guest])
    render :json => { success: true, guest: @guest }
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
    if current_user.nil?
      redirect_to root_path
      return false
    end

    meta = current_user.try(:meta)
    id = params[:id].to_i

    return if (current_user && (current_user.admin? || current_user.sub_admin?)) || (meta && meta.is_a?(Manager))

    redirect_to user_session_path if meta.nil? || (meta.is_a?(Guest) && meta.id != id)
    redirect_to user_session_path if meta.is_a?(Manager) && !meta.hosts.pluck(:id).include?(id)

    #lookup user type. if same type, false. different type redirect
    param_user_type = User.find(id).meta_type
    user_type = current_user.meta_type
    if param_user_type == user_type
      redirect_to root_path unless current_user.meta.id == id
    else
      return false unless current_user.meta.id == id
    end

  end
end
