require "rails_helper"

RSpec.describe "Courses", type: :request do
  describe "GET derpatments/:department_id/courses" do
    subject(:course_request) { get api_v1_department_courses_path(department) }

    let(:course) { create(:course) }
    let(:department) { course.department }
    let(:json_response) { JSON.parse(response.body) }

    before do
      create(:course)
      course_request
    end

    it { expect(response).to have_http_status(:ok) }
    it { expect(json_response["data"].size).to be 1 }
    it { expect(json_response["data"][0]["id"]).to eq course.id.to_s }

    it "serializes course department" do
      expect(json_response["data"][0]["relationships"]["department"]["data"]["id"]).to be department.id
    end
  end

  describe "GET /courses/:id" do
    subject(:course_request) { get api_v1_course_path(course) }

    let(:course) { create(:course) }
    let(:department) { course.department }
    let(:json_response) { JSON.parse(response.body) }

    before do
      course_request
    end

    it { expect(response).to have_http_status(:ok) }
    it { expect(json_response["data"]["id"]).to eq course.id.to_s }

    it "serializes course department" do
      expect(json_response["data"]["relationships"]["department"]["data"]["id"]).to be department.id
    end
  end
end
