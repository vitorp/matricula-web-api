require "rails_helper"

RSpec.describe Api::V1::DepartmentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "api/v1/departments").to route_to("api/v1/departments#index")
    end

    it "routes to #show" do
      expect(get: "api/v1/departments/1").to route_to("api/v1/departments#show", id: "1")
    end
  end
end
