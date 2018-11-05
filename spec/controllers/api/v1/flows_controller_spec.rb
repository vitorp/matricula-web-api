require "rails_helper"

RSpec.describe Api::V1::FlowsController, type: :controller do
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      create(:flow)
      curriculum = create(:curriculum)
      get :index, params: {curriculum_id: curriculum.id}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      flow = create(:flow)
      get :show, params: {id: flow.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end
end
