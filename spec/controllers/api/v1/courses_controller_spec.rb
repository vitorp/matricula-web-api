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
    it "returns a success response" do
      create(:course)
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      course = create(:course)
      get :show, params: {id: course.to_param}, session: valid_session
      expect(response).to be_success
    end
  end
end
