class AvailabilityController < ApplicationController
  def show
  	doctor = Doctor.find params[:id]
  	@availabilities = doctor.availabilities
  end

  def schedule
  end
end
