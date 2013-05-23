class PerscriptionController < ApplicationController

  def refill
    respond_to do |format|
      format.html
    end
  end

def new
   @medicine = medicine.new

    respond_to do |format|
      format.html # new.html.erb
     format.json { render json: @medicine }
   end
end

  def create
    @medicine = medicine.new(params[:medicine])

    respond_to do |format|
      if @medicine.save
        format.html { redirect_to @medicine, notice: 'medicine was successfully created.' }
        format.json { render json: @medicine, status: :created, location: @medicine }
      else
        format.html { render action: "new" }
        format.json { render json: @medicine.errors, status: :unprocessable_entity }
      end
    end
  end

end
