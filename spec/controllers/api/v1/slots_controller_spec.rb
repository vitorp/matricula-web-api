require "rails_helper"

RSpec.describe Api::V1::SlotsController, type: :controller do
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      create(:slot)
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      slot = create(:slot)
      get :show, params: {id: slot.to_param}, session: valid_session
      expect(response).to be_success
    end
  end
end
