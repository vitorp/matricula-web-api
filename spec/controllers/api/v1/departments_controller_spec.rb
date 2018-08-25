require "rails_helper"

RSpec.describe Api::V1::DepartmentsController, type: :controller do
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      create(:department)
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      department = create(:department)
      get :show, params: {id: department.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end
end
