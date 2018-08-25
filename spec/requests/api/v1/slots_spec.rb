require "rails_helper"

RSpec.describe "Slots", type: :request do
  describe "GET /slots" do
    it "works! (now write some real specs)" do
      get api_v1_slots_path
      expect(response).to have_http_status(:ok)
    end
  end
end
