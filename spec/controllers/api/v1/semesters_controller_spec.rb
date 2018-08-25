require "rails_helper"

RSpec.describe Api::V1::SemestersController, type: :controller do
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      create(:semester)
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      semester = create(:semester)
      get :show, params: {id: semester.to_param}, session: valid_session
      expect(response).to be_success
    end
  end
end
