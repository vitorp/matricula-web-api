require "rails_helper"

RSpec.describe Api::V1::ProfessorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "api/v1/professors").to route_to("api/v1/professors#index")
    end

    it "routes to #show" do
      expect(get: "api/v1/professors/1").to route_to("api/v1/professors#show", id: "1")
    end
  end
end
