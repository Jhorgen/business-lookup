class BusinessesController < ApplicationController
def index
  @location = Location.find(params[:location_id])
  @businesses = @location.businesses.all
  json_response(@businesses)
end

def show
  @location = Location.find(params[:location_id])
  @business = Business.find(params[:id])
  json_response(@business)
end

def create
  @location = Location.find(params[:location_id])
  @destinaton.businesses.create!(business_params)
  json_response(@business)
end

def update
  @location = Location.find(params[:location_id])
  @business = Business.find(params[:id])
  if @location.businesses.update!(business_params)
    render status: 200, json: {
      message: "This business has been updated successfully."
    }

  end
end

def destroy
  @location = Location.find(params[:location_id])
  @business = Business.find(params[:id])
  if @business.destroy!

  end
end

private

def json_response(object, status = :ok)
render json: object, status: status
end

def business_params
  params.permit(:name, :business_catagory, :text_body)
end

end
