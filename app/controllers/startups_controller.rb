class StartupsController < ApplicationController
  # GET /startups
  # GET /startups.json
  def index
    @startups = Startup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @startups }
    end
  end

  def ping
    @startup = Startup.find(params[:id])

    PingMailer.ping_startup(@startup).deliver

    render :nothing => true
  end

  # GET /startups/1
  # GET /startups/1.json
  def show
    @startup = Startup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @startup }
    end
  end

  # GET /startups/new
  # GET /startups/new.json
  def new
    @startup = Startup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @startup }
    end
  end

  # GET /startups/1/edit
  def edit
    @startup = Startup.find(params[:id])
  end

  # POST /startups
  # POST /startups.json
  def create
    @startup = Startup.new(params[:startup])

    respond_to do |format|
      if @startup.save
        format.html { redirect_to @startup, notice: 'Startup was successfully created.' }
        format.json { render json: @startup, status: :created, location: @startup }
      else
        format.html { render action: "new" }
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /startups/1
  # PUT /startups/1.json
  def update
    @startup = Startup.find(params[:id])

    respond_to do |format|
      if @startup.update_attributes(params[:startup])
        format.html { redirect_to @startup, notice: 'Startup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
  end
end
