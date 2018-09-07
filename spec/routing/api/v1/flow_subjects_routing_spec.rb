require "rails_helper"

RSpec.describe Api::V1::FlowSubjectsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "api/v1/flow_subjects").to route_to("api/v1/flow_subjects#index")
    end

    it "routes to #show" do
      expect(get: "api/v1/flow_subjects/1").to route_to("api/v1/flow_subjects#show", id: "1")
    end
  end
end
