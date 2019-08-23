class LocationsController < ApplicationController

  def index
    @locations = Location.all
    json_response(@locations)
  end

  def show
    @location = Location.find(params[:id])
    json_response(@location)
  end

  def create
    @location.create!(location_params)
    json_response(@location)
  end

  def update
    @location = Location.find(params[:id])
    if @location.update!(location_params)
      render status: 200, json: {
        message: "This location has been updated successfully."
      }

    end
  end

  def destroy
    @location = Location.find(params[:id])
    if @location.destroy!

    end
  end

  def randomize
 @location = Location.random
 json_response(@location)
  end

  private
  def location_params
    params.permit(:city, :state)
  end
  def json_response(object, status = :ok)
    render json: object, status: status
  end

end
