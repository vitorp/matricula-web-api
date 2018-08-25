require "rails_helper"

RSpec.describe "Semesters", type: :request do
  describe "GET /semesters" do
    it "works! (now write some real specs)" do
      get api_v1_semesters_path
      expect(response).to have_http_status(:ok)
    end
  end
end
