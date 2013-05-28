class PursesController < ApplicationController
  # GET /purses
  # GET /purses.json
  def index
    @purses = Purse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @purses }
    end
  end

  # GET /purses/1
  # GET /purses/1.json
  def show
    @purse = Purse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @purse }
    end
  end

  # GET /purses/new
  # GET /purses/new.json
  def new
    @purse = Purse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @purse }
    end
  end

  # GET /purses/1/edit
  def edit
    @purse = Purse.find(params[:id])
  end

  # POST /purses
  # POST /purses.json
  def create
    @purse = Purse.new(params[:purse])

    respond_to do |format|
      if @purse.save
        format.html { redirect_to @purse, notice: 'Appointment was successfully scheduled.' }
        format.json { render json: @purse, status: :created, location: @purse }
      else
        format.html { render action: "new" }
        format.json { render json: @purse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /purses/1
  # PUT /purses/1.json
  def update
    @purse = Purse.find(params[:id])

    respond_to do |format|
      if @purse.update_attributes(params[:purse])
        format.html { redirect_to @purse, notice: 'Schedule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @purse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purses/1
  # DELETE /purses/1.json
  def destroy
    @purse = Purse.find(params[:id])
    @purse.destroy

    respond_to do |format|
      format.html { redirect_to purses_url }
      format.json { head :no_content }
    end
  end
end
