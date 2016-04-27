class WitnessesController < ApplicationController
  before_filter :is_authorized, only: [:index, :unassign, :assign]
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

  # PUT /witnesses/1
  # PUT /witnesses/1.json
  def update
    @witness = Witness.find(params[:id])

    respond_to do |format|
      if @witness.update_attributes(params[:witness])

        if(params[:witness][:host_id].present?)
          HostMailer.witness_assigned(
            params[:witness][:host_id],
            @witness.id,
            I18n.locale
          ).deliver

          @host = Host.find(params[:witness][:host_id])
          @host.update_attributes(assignment_time: Time.now.utc.localtime)
        end
        
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
    if @manager.concept
      @hosts = Host.where(concept: @manager.concept, survivor_needed: true)
    else
      @hosts = Host.where(city_id: get_city_ids_for_assignment, survivor_needed: true)
    end
    @hosts = @hosts.select { |h| h.witness.nil? && h.in_query(query) && h.received_registration_mail }
    @cities = @manager.get_cities

    respond_to do |format|
      format.html
      format.json {
        render :json => {
          hosts: @hosts.to_json(:include => [:user, :city])
        }
      }
    end
  end

  def unassign
    @witness = Witness.find(params[:id])
    @host_id = @witness.host_id
    @witness.update_attributes(host_id: nil)
    ManagerMailer.assignment_cancelled(@host_id, @witness.id).deliver
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
    if params[:city_id]
      [params[:city_id]]
    else
      if @manager.user.any_admin?
        City.all.map(&:id)
      else 
        @manager.cities.map(&:id)
      end
    end
  end

  def query
    return params[:query]
  end
end
