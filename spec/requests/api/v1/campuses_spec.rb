require "rails_helper"

RSpec.describe "Campuses", type: :request do
  describe "GET /campuses" do
    it "works! (now write some real specs)" do
      get api_v1_campuses_path
      expect(response).to have_http_status(:ok)
    end
  end
end
