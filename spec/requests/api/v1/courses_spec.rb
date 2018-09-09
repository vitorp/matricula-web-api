require "rails_helper"

RSpec.describe "Courses", type: :request do
  describe "GET /courses" do
    subject(:course_request) { get api_v1_department_courses_path(course.department) }

    let(:course) { create(:course) }

    before do
      course_request
    end

    it { expect(response).to have_http_status(:ok) }
  end
end
