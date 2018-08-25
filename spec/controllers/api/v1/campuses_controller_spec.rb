require "rails_helper"

RSpec.describe Api::V1::CampusesController, type: :controller do
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      create(:campus)
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      campus = create(:campus)
      get :show, params: {id: campus.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end
end
