require "rails_helper"

RSpec.describe CampusesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(get: "/campuses").to route_to("campuses#index")
    end


    it "routes to #show" do
      expect(get: "/campuses/1").to route_to("campuses#show", id: "1")
    end

  end
end
