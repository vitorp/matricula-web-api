require "rails_helper"

RSpec.describe Api::V1::ProfessorsController, type: :controller do
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      create(:professor)
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      professor = create(:professor)
      get :show, params: {id: professor.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end
end
