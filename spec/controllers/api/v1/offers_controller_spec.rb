require "rails_helper"

RSpec.describe Api::V1::OffersController, type: :controller do
  let(:valid_session) { {} }

  describe "GET #index" do
    let(:offer) { create(:offer) }

    it "returns a success response" do
      get :index, params: {semester_id: offer.semester.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      offer = create(:offer)
      get :show, params: {id: offer.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end
end
