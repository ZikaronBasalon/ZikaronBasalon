class WitnessesController < ApplicationController
  include ApplicationHelper
  # before_action :authenticate_user!
  before_filter :is_authorized, only: [:index, :unassign, :assign, :show]
  before_filter :is_admin, only: [:destroy]
  # GET /witnesses
  # GET /witnesses.json

  def index
    @witnesses = Witness.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @witnesses }
    end
  end

  # GET /witnesses/1
  # GET /witnesses/1.json
  def show
    @witness = Witness.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @witness }
    end
  end

  # GET /witnesses/new
  # GET /witnesses/new.json
  def new
    @witness = Witness.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @witness }
    end
  end

  # GET /witnesses/1/edit
  def edit
    @witness = Witness.find(params[:id])
    render 'new'
  end

  # POST /witnesses
  # POST /witnesses.json
  def create
    @witness = Witness.new(params[:witness])

    respond_to do |format|
      if @witness.save
        #format.html { redirect_to action: "index" }
        format.json { render json: @witness, status: :created, location: @witness }
      else
        #format.html { render action: "new" }
        format.json { render json: @witness.errors, status: :unprocessable_entity }
      end
    end
  end

  def safe_params
    params.require(:witness).permit(
      :full_name,
      :address,
      :city_id,
      :witness_type,
      :language,
      :email,
      :phone,
      :stairs,
      :special_needs,
      :seminar_required,
      :free_text,
      :special_population,
      :contacted,
      :contacted_by_host,
      :available_for_teaming,
      :host_id,
      :concept,
      :can_morning,
      :can_afternoon,
      :can_evening,
      :free_on_day,
      :contact_name,
      :contact_phone,
      :external_assignment,
      :additional_phone,
      :available_day1,
      :available_day2,
      :available_day3,
      :available_day4,
      :available_day5,
      :available_day6,
      :archived,
      :need_to_followup,
      :active_last_year,
      :available_day7,
      :available_day8,
      :available_day9,
      :how_brought
    )
  end

  # PUT /witnesses/1
  # PUT /witnesses/1.json
  def update
    @witness = Witness.find(params[:id])

    respond_to do |format|
      if @witness.update(safe_params)
        format.json { render json: @witness, status: :created, location: @witness }
      else
        format.json { render json: @witness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /witnesses/1
  # DELETE /witnesses/1.json
  def destroy
    @witness = Witness.find(params[:id])
    @witness.destroy
    render :json => { success: true, witness: @witness }
  end

  # GET /witnesses/1/assign
  def assign
    @manager = current_user.meta
    @witness = Witness.find(params[:id])
    @cities = City.where(id: get_city_ids_for_assignment)

    respond_to do |format|
      if @manager.concept
        @hosts = Host.where(concept: @manager.concept, survivor_needed: true)
      else
        @hosts = Host.where(city_id: get_city_ids_for_assignment, survivor_needed: true)
      end

      if params[:floor]
        if params[:floor][0] == '>'
          above_floor = params[:floor][1..-1].to_i
          @hosts = @hosts.where('floor > ?', above_floor)
        else
          floor = params[:floor].to_i
          @hosts = @hosts.where(floor: floor)
        end
      end

      if params[:elevator]
        is_elevator = ActiveRecord::Type::Boolean.new.type_cast_from_user(params[:elevator])
        @hosts = @hosts.where(elevator: is_elevator)
      end

      @hosts = @hosts.where(event_language: params[:event_language]) if params[:event_language]

      if params[:available_day]
        @hosts =
          if params[:available_day] == 'available_day_other'
            know_dates = (1..30).map { |day| available_day_to_available_date("available_day#{day}") }.compact
            @hosts.where.not(event_date: know_dates)
          else
            date = available_day_to_available_date(params[:available_day])
            @hosts.where(event_date: date)
          end
      end

      # Extra Filters replaces @hosts.select statement below
      @hosts = @hosts.where(received_registration_mail: true)
      if query.present?
        @hosts = @hosts.joins(:user, :city)
        @hosts = filter_by_query(@hosts, query)
      end
      @hosts = @hosts.where('witness_id IS NULL')
      # @hosts = @hosts.select { |h| h.witness.nil? && h.in_query(query) && h.received_registration_mail }

      page = params[:page]

      @hosts_count = @hosts.count
      @hosts = @hosts.paginate(:page => page || 1, :per_page => 10)


      format.html
      format.json {
        render :json => {
          hosts: @hosts.to_json(:include => [:user, :city]),
          hosts_count: @hosts_count
        }
      }
    end
  end

  def unassign
    @witness = Witness.find(params[:id])
    @host = @witness.host
    @witness.host_id = nil
    @witness.host = nil
    @witness.save!;
    @host.witness_id = nil
    @host.assignment_time = nil
    @host.witness = nil
    @host.contact_witness_sent_at = nil
    @host.save!
    @host_id = @host.id
    ManagerMailer.assignment_cancelled(@host_id, @witness.id, current_user).deliver
    redirect_to @witness
  end

  def is_authorized
    unless (current_user && current_user.meta.is_a?(Manager)) ||
           (current_user && (current_user.admin? || current_user.sub_admin?))
      redirect_to root_path
    end
  end

  def is_admin
    redirect_to root_path unless current_user.admin?
  end

  def get_city_ids_for_assignment
    communities = CommunityLeadership.where(manager_id: current_user.meta.id)
    city_ids = communities.map(&:city_id)
    if params[:city_id]
      [params[:city_id]]
    else
      if !@manager.user.simple_admin?
        City.all.map(&:id)
      else
        @manager.cities.where(id: city_ids).map(&:id)
      end
    end
  end

  def query
    return params[:query]
  end

  private

  def available_day_to_available_date(available_day)
    return nil unless available_day&.start_with?('available_day')

    d_m = I18n.t(available_day, scope: :shared, default: nil)
    Date.strptime("#{d_m}.#{Time.current.to_date.year}", "%d.%m.%Y") if d_m
  end
end
