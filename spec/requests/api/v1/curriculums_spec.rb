require "rails_helper"

RSpec.describe "Curriculums", type: :request do
  describe "GET course/:course_id/curriculums" do
    subject(:curriculums_request) { get api_v1_course_curriculums_path(course) }

    let(:curriculum) { create(:curriculum) }
    let(:course) { curriculum.course }
    let(:json_response) { JSON.parse(response.body) }

    before do
      create(:curriculum) # curriculum from other courses
      curriculums_request
    end

    it { expect(response).to have_http_status(:ok) }
    it { expect(json_response.size).to eq 1 }

    it "returns curriculum course" do
      expect(json_response["data"][0]["relationships"]["course"]["data"]["id"]).to eq course.id
    end
  end

  describe "GET /curriculums/:id" do
    subject(:curriculums_request) { get api_v1_curriculum_path(curriculum) }

    let(:curriculum) { create(:curriculum) }
    let(:course) { curriculum.course }
    let(:json_response) { JSON.parse(response.body) }

    before do
      curriculums_request
    end

    it { expect(response).to have_http_status(:ok) }
    it { expect(json_response["data"]["id"]).to eq curriculum.id.to_s }

    it "returns curriculum course" do
      expect(json_response["data"]["relationships"]["course"]["data"]["id"]).to eq course.id
    end
  end
end
