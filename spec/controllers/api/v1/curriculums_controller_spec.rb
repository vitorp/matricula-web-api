require 'rails_helper'

RSpec.describe Api::V1::CurriculumsController, type: :controller do
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      create(:curriculum)
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      curriculum = create(:curriculum)
      get :show, params: {id: curriculum.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

end
