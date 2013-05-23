class MedzzsController < ApplicationController
  # GET /medzzs
  # GET /medzzs.json
  def index
    @medzzs = Medzz.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @medzzs }
    end
  end

  # GET /medzzs/1
  # GET /medzzs/1.json
  def show
    @medzz = Medzz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @medzz }
    end
  end

  # GET /medzzs/new
  # GET /medzzs/new.json
  def new
    @medzz = Medzz.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @medzz }
    end
  end

  # GET /medzzs/1/edit
  def edit
    @medzz = Medzz.find(params[:id])
  end

  # POST /medzzs
  # POST /medzzs.json
  def create
    @medzz = Medzz.new(params[:medzz])

    respond_to do |format|
      if @medzz.save
        format.html { redirect_to @medzz, notice: 'Your Perscription was successfully submitted.' }
        format.json { render json: @medzz, status: :created, location: @medzz }
      else
        format.html { render action: "new" }
        format.json { render json: @medzz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /medzzs/1
  # PUT /medzzs/1.json
  def update
    @medzz = Medzz.find(params[:id])

    respond_to do |format|
      if @medzz.update_attributes(params[:medzz])
        format.html { redirect_to @medzz, notice: 'Medzz was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @medzz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medzzs/1
  # DELETE /medzzs/1.json
  def destroy
    @medzz = Medzz.find(params[:id])
    @medzz.destroy

    respond_to do |format|
      format.html { redirect_to medzzs_url }
      format.json { head :no_content }
    end
  end
end
