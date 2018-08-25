require "rails_helper"

RSpec.describe "Subjects", type: :request do
  describe "GET /subjects" do
    it "works! (now write some real specs)" do
      get api_v1_subjects_path
      expect(response).to have_http_status(:ok)
    end
  end
end
