require "rails_helper"

RSpec.describe Api::V1::FlowPeriodsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "api/v1/flow_periods").to route_to("api/v1/flow_periods#index")
    end

    it "routes to #show" do
      expect(get: "api/v1/flow_periods/1").to route_to("api/v1/flow_periods#show", id: "1")
    end
  end
end
