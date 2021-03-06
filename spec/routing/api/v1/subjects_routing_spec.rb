require "rails_helper"

RSpec.describe Api::V1::SubjectsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "api/v1/subjects").to route_to("api/v1/subjects#index")
    end

    it "routes to #show" do
      expect(get: "api/v1/subjects/1").to route_to("api/v1/subjects#show", id: "1")
    end

    context "when filtering by semester" do
      it "routes to #index" do
        expect(get: "api/v1/semesters/1/subjects").to route_to("api/v1/subjects#index", semester_id: "1")
      end
    end

    context "when filtering by department" do
      it "routes to #index" do
        expect(get: "api/v1/departments/1/subjects").to route_to("api/v1/subjects#index", department_id: "1")
      end
    end
  end
end
