class AvailabilityController < ApplicationController
  def show
  	doctor = Doctor.find params[:id]
  	@availabilities = doctor.availabilities
  end

 def schedule
 	
    respond_to do |format|
      format.html { render 'schedule' }
    end
 end
end