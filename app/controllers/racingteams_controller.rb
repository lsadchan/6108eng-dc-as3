class RacingteamsController < ApplicationController
  # GET /racingteams
  # GET /racingteams.json
  def index
    @racingteams = Racingteam.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @racingteams }
    end
  end

  # GET /racingteams/1
  # GET /racingteams/1.json
  def show
    @racingteam = Racingteam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @racingteam }
    end
  end

  # GET /racingteams/new
  # GET /racingteams/new.json
  def new
    @racingteam = Racingteam.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @racingteam }
    end
  end

  # GET /racingteams/1/edit
  def edit
    @racingteam = Racingteam.find(params[:id])
  end

  # POST /racingteams
  # POST /racingteams.json
  def create
    @racingteam = Racingteam.new(params[:racingteam])

    respond_to do |format|
      if @racingteam.save
        format.html { redirect_to @racingteam, notice: 'Event was successfully created.' }
        format.json { render json: @racingteam, status: :created, location: @racingteam }
      else
        format.html { render action: "new" }
        format.json { render json: @racingteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /racingteams/1
  # PUT /racingteams/1.json
  def update
    @racingteam = Racingteam.find(params[:id])

    respond_to do |format|
      if @racingteam.update_attributes(params[:racingteam])
        format.html { redirect_to @racingteam, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @racingteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /racingteams/1
  # DELETE /racingteams/1.json
  def destroy
    @racingteam = Racingteam.find(params[:id])
    @racingteam.destroy

    respond_to do |format|
      format.html { redirect_to racingteams_url }
      format.json { head :no_content }
    end
  end
end
