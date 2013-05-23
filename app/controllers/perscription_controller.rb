class PerscriptionController < ApplicationController
  def request
    respond_to do |format|
      format.html { render 'request' }
    end
  end
end
