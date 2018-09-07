require "rails_helper"

RSpec.describe "FlowSubject", type: :request do
  describe "GET /flow_periods" do
    it "works! (now write some real specs)" do
      get api_v1_flow_subjects_path
      expect(response).to have_http_status(:ok)
    end
  end
end
