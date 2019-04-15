class HostsController < ApplicationController
  before_filter :correct_host
  # before_action :authenticate_user!
  before_filter :logout_if_inactive

  def logout_if_inactive
   if current_user && !current_user.active_this_year? && (Time.zone.now.to_date - current_user.current_sign_in_at.to_date).to_i > 30
      sign_out current_user
      url = "http://zikaronbasalon.herokuapp.com/he/users/sign_in"
      redirect_to url
      return false;
    end
  end

  respond_to :html, :json

  def index
    @hosts = Host.includes(:user).order('created_at DESC')
  end

  def new
    redirect_to signup_path(type: 'host')
  end

  def show


    @host = Host.find(params[:id])
    respond_to do |format|
      format.html { correct_host }
      format.json {
        if @host.available_places > 0
          render :json => {
           host: @host.to_json(:include => [
                { :user => { :methods => [:first_name] } },
                :city,
                :country
              ], :methods => [:available_places]) }

        else
          render :json => { success: false }
        end
      }
    end
  end



  def destroy
    @host = Host.find(params[:id])
    @host.destroy
    render :json => { success: true, host: @host }
  end

  def edit
    @host = Host.find(params[:id])
    gon.host = @host.to_json(:include => [:city, :country])
  end

  def update
    @host = Host.find(params[:id])
    if params[:deactivate].present?
      @host.active=false
      @host.received_registration_mail=false
      @host.save!
      @host.user.active_this_year=false
     #put here code for changing to guest from host
    elsif params[:finalStep]
      if !@host.received_registration_mail
        HostMailer.new_host(@host.user.id, I18n.locale).deliver
        @host.update_attributes(received_registration_mail: true)
      end
      @host.update_attributes(params[:host])
      @host.active=true
      @host.save!
      @host.user.active_this_year=true
      @host.user.save!
    elsif params[:host].present?
      @host.update(params[:host])
      raise if params[:host].keys.include?('city_id') && @host.city_id.blank?
      if @host.city.present?
        if @host.country.blank?
          @host.country_id = @host.city.country_id
        else
          # Make sure that if a city is created it is assigned to the Other region of it's country
          other_region_of_country = Region.where(country_id: @host.country.id, name:Region::OTHER_REGION_NAME).last || Region.last
          @host.city.region_id = other_region_of_country.id
          @host.city.save!
        end
        @host.save!
      end
    end
    render json: @host, status: :ok
  rescue => e
    render :blank, status: :unprocessable_entity
  end

  # Checks if user has access to view page
  def correct_host
    # If is logged out - disallow
    if current_user.nil?
      redirect_to root_path
      return false
    end

    user_type = current_user.meta_type
    meta = current_user.try(:meta)
    id = params[:id].to_i

    # If is manager/admin/subadmin - allow
    return if current_user && (current_user.admin? || current_user.sub_admin?)

    # If is a manager/admin - with this area - allow
    if user_type == 'Manager' && current_user.simple_admin?
      # If is a legit manager who has this host - allow
      if current_user.global_admin? || meta.hosts.pluck(:id).include?(id)
        return
      # If manager doesn't have host - disallow
      else
        redirect_to root_path
        return false
      end
    end

    # If user is not of type host - disallow
    if user_type != "Host"
      redirect_to root_path
      return false
    end

    # If meta id is not the same as hosts - disallow, otherwise allow
    if meta.id != id
      redirect_to root_path
      return false
    end
  end

  def changerole
    updated_user = Roles.new(params[:id]).change_role

    render json: updated_user, status: 201
  end

end

