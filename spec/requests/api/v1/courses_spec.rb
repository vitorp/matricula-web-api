require "rails_helper"

RSpec.describe "Courses", type: :request do
  describe "GET /courses" do
    it "works! (now write some real specs)" do
      get api_v1_courses_path
      expect(response).to have_http_status(:ok)
    end
  end
end
