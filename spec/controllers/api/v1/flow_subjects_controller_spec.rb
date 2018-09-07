require "rails_helper"

RSpec.describe Api::V1::FlowSubjectsController, type: :controller do
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      create(:flow_subject)
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      flow_subject = create(:flow_subject)
      get :show, params: {id: flow_subject.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end
end
