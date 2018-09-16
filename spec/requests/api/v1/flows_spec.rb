require "rails_helper"

RSpec.describe "Flow", type: :request do
  let(:flow) { create(:flow) }
  let(:curriculum) { flow.curriculum }
  let(:json_response) { JSON.parse(response.body) }

  describe "GET curriculums/:curriculum_id/flows" do
    subject(:flow_request) { get api_v1_curriculum_flows_path(curriculum) }

    before do
      create(:flow)
      flow_request
    end

    it { expect(response).to have_http_status(:ok) }
    it { expect(json_response["data"].size).to eq 1 }
    it { expect(json_response["data"][0]["id"]).to eq flow.id.to_s }
  end

  describe "GET flows/:id" do
    subject(:flow_request) { get api_v1_flow_path(flow) }

    before do
      flow_request
    end

    it { expect(response).to have_http_status(:ok) }
    it { expect(json_response["data"]["id"]).to eq flow.id.to_s }

    it "serializes flow curriculum" do
      expect(json_response["data"]["relationships"]["curriculum"]["data"]["id"]).to eq curriculum.id.to_s
    end
  end
end
