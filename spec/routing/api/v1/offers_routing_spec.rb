require "rails_helper"

RSpec.describe Api::V1::OffersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "api/v1/semesters/1/offers").to route_to("api/v1/offers#index", semester_id: "1")
    end

    it "routes to #show" do
      expect(get: "api/v1/offers/1").to route_to("api/v1/offers#show", id: "1")
    end

    context "when filtering by subject" do
      it "routes to #index" do
        expect(get: "api/v1/semesters/1/subjects/1/offers")
          .to route_to("api/v1/offers#index", semester_id: "1", subject_id: "1")
      end
    end
  end
end
