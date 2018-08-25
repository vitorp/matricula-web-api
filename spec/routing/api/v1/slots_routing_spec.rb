require "rails_helper"

RSpec.describe Api::V1::SlotsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "api/v1/slots").to route_to("api/v1/slots#index")
    end

    it "routes to #show" do
      expect(get: "api/v1/slots/1").to route_to("api/v1/slots#show", id: "1")
    end
  end
end
