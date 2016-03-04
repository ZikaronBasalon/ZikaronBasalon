class WitnessesController < ApplicationController
  before_filter :is_authorized, only: [:index, :new, :create]
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
  end

  # POST /witnesses
  # POST /witnesses.json
  def create
    @witness = Witness.new(params[:witness])

    respond_to do |format|
      if @witness.save
        format.html { redirect_to action: "index" }
        format.json { render json: @witness, status: :created, location: @witness }
      else
        format.html { render action: "new" }
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
        format.html { redirect_to @witness, notice: 'Witness was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @witness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /witnesses/1
  # DELETE /witnesses/1.json
  def destroy
    @witness = Witness.find(params[:id])
    @witness.destroy

    respond_to do |format|
      format.html { redirect_to witnesses_url }
      format.json { head :no_content }
    end
  end

  # GET /witnesses/1/assign
  def assign
    @witness = Witness.find(params[:id])
  end

  def is_authorized
    unless (current_user && current_user.meta.is_a?(Manager)) || 
           (current_user && current_user.admin?)
      redirect_to root_path
    end
  end
end
