require "rails_helper"

RSpec.describe Api::V1::FlowPeriodsController, type: :controller do
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      create(:flow_period)
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      flow_period = create(:flow_period)
      get :show, params: {id: flow_period.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end
end
