require "rails_helper"

RSpec.describe Api::V1::SemestersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "api/v1/semesters").to route_to("api/v1/semesters#index")
    end

    it "routes to #show" do
      expect(get: "api/v1/semesters/1").to route_to("api/v1/semesters#show", id: "1")
    end
  end
end
