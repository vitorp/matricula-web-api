require "rails_helper"

RSpec.describe Api::V1::OffersController, type: :controller do
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      create(:offer)
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      offer = create(:offer)
      get :show, params: {id: offer.to_param}, session: valid_session
      expect(response).to be_success
    end
  end
end
