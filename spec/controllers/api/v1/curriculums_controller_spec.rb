require "rails_helper"

RSpec.describe Api::V1::CurriculumsController, type: :controller do
  let(:valid_session) { {} }

  describe "GET #index" do
    subject(:curriculum_request) { get :index, params: {course_id: course.id}, session: valid_session }

    let(:curriculum) { create(:curriculum) }
    let(:course) { curriculum.course }

    it "returns a success response" do
      curriculum_request
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      curriculum = create(:curriculum)
      get :show, params: {id: curriculum.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end
end
