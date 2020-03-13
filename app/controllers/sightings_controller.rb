class SightingsController < ApplicationController

  def show 
    sighting = Sighting.find_by(id: params[:id])
    render json: sighting, incllude: [:bird, :location]
  end
end
