require "rails_helper"

RSpec.describe Api::V1::CoursesController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Course. As you add validations to Course, be sure to
  # adjust the attributes here as well.

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CoursesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    let(:course) { create(:course) }

    it "returns a success response" do
      get :index, params: {department_id: course.department.id}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    let(:course) { create(:course) }

    it "returns a success response" do
      get :show, params: {id: course.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end
end
