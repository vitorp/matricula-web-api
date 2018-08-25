require "rails_helper"

RSpec.describe Api::V1::SubjectsController, type: :controller do
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      create(:subject)
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      subject = create(:subject)
      get :show, params: {id: subject.to_param}, session: valid_session
      expect(response).to be_success
    end
  end
end
