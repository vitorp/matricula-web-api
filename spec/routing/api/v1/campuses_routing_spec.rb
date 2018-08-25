require "rails_helper"

RSpec.describe Api::V1::CampusesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(get: "/api/v1/campuses").to route_to("api/v1/campuses#index")
    end


    it "routes to #show" do
      expect(get: "/api/v1/campuses/1").to route_to("api/v1/campuses#show", id: "1")
    end

  end
end
