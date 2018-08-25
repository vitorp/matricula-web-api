require "rails_helper"

RSpec.describe "Professors", type: :request do
  describe "GET /professors" do
    it "works! (now write some real specs)" do
      get api_v1_professors_path
      expect(response).to have_http_status(:ok)
    end
  end
end
