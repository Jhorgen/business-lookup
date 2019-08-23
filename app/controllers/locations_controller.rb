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
    if @location.update(location_params)

    end
  end

  def destroy
    @location = Location.find(params[:id])
    if @location.destroy!

    end
  end

  private
  def location_params
    params.permit(:city, :state)
  end
  def json_response(object, status = :ok)
    render json: object, status: status
  end

end
