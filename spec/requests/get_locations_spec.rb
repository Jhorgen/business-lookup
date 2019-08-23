require "rails_helper"

describe "get all locations route", :type => :request do
  let!(:locations) { FactoryBot.create_list(:location, 20)}

  before { get '/locations'}

  it 'returns all locations' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
  it "returns all locations" do
    expect(JSON.parse(response.body).size).to eq(Location.count)
  end
end

describe "GET /locations/:id" do
  let (:location) { FactoryBot.create(:location) }

  context "with valid :id" do
    before do
      get "/locations/#{location.id}"
    end

    it "returns a success status" do
      expect(response).to have_http_status(:success)
    end
  end
end
