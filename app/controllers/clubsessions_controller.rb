class ClubsessionsController < ApplicationController
  # GET /clubsessions
  # GET /clubsessions.json
  def index
    @clubsessions = Clubsession.all(:order  => "starttime ASC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clubsessions }
    end
  end

  # GET /clubsessions/1
  # GET /clubsessions/1.json
  def show
    @clubsession = Clubsession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clubsession }
    end
  end

  # GET /clubsessions/new
  # GET /clubsessions/new.json
  def new
    @clubsession = Clubsession.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clubsession }
    end
  end

  # GET /clubsessions/1/edit
  def edit
    @clubsession = Clubsession.find(params[:id])
  end

  # POST /clubsessions
  # POST /clubsessions.json
  def create
    @clubsession = Clubsession.new(params[:clubsession])

    respond_to do |format|
      if @clubsession.save
        format.html { redirect_to @clubsession, notice: 'Club session was successfully created.' }
        format.json { render json: @clubsession, status: :created, location: @clubsession }
      else
        format.html { render action: "new" }
        format.json { render json: @clubsession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clubsessions/1
  # PUT /clubsessions/1.json
  def update
    @clubsession = Clubsession.find(params[:id])

    respond_to do |format|
      if @clubsession.update_attributes(params[:clubsession])
        format.html { redirect_to @clubsession, notice: 'Club session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clubsession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clubsessions/1
  # DELETE /clubsessions/1.json
  def destroy
    @clubsession = Clubsession.find(params[:id])
    @clubsession.destroy

    respond_to do |format|
      format.html { redirect_to clubsessions_url }
      format.json { head :no_content }
    end
  end
end
