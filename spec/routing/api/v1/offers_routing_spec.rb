require "rails_helper"

RSpec.describe Api::V1::OffersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "api/v1/offers").to route_to("api/v1/offers#index")
    end

    it "routes to #show" do
      expect(get: "api/v1/offers/1").to route_to("api/v1/offers#show", id: "1")
    end
  end
end
