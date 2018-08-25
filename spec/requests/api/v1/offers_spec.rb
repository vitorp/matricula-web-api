require "rails_helper"

RSpec.describe "Offers", type: :request do
  describe "GET /offers" do
    it "works! (now write some real specs)" do
      get api_v1_offers_path
      expect(response).to have_http_status(:ok)
    end
  end
end
