require "rails_helper"

RSpec.describe Api::V1::FlowsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "api/v1/curriculums/1/flows").to route_to("api/v1/flows#index", curriculum_id: "1")
    end

    it "routes to #show" do
      expect(get: "api/v1/flows/1").to route_to("api/v1/flows#show", id: "1")
    end
  end
end
