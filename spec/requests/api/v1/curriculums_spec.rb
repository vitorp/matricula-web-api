require "rails_helper"

RSpec.describe "Curriculums", type: :request do
  describe "GET course/:course_id/curriculums" do
    subject(:curriculums_request) { get api_v1_course_curriculums_path(course) }

    let(:curriculum) { create(:curriculum) }
    let(:course) { curriculum.course }
    let(:json_response) { JSON.parse(response.body) }

    before do
      create(:curriculum) # curriculum from other courses
    end

    it "has http status ok" do
      curriculums_request
      expect(response).to have_http_status(:ok)
    end

    it "returns only course curriculum" do
      curriculums_request
      expect(json_response.size).to eq 1
    end
  end
end
