require 'rails_helper'

RSpec.describe Api::V1::CampusesController, type: :controller do
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CampusesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      create(:campus)
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      campus = create(:campus)
      get :show, params: {id: campus.to_param}, session: valid_session
      expect(response).to be_success
    end
  end
end
