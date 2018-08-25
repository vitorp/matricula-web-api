require "rails_helper"

RSpec.describe Api::V1::CurriculumsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "api/v1/curriculums").to route_to("api/v1/curriculums#index")
    end

    it "routes to #show" do
      expect(:get => "api/v1/curriculums/1").to route_to("api/v1/curriculums#show", :id => "1")
    end

  end
end
