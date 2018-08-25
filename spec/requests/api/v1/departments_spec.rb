require "rails_helper"

RSpec.describe "Departments", type: :request do
  describe "GET /departments" do
    it "works! (now write some real specs)" do
      get api_v1_departments_path
      expect(response).to have_http_status(:ok)
    end
  end
end
