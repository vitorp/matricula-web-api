require "rails_helper"

RSpec.describe "Offers", type: :request do
  let(:offer) { create(:offer) }
  let(:semester) { offer.semester }
  let(:offer_subject) { offer.subject }
  let(:json_response) { JSON.parse(response.body) }

  describe "GET semesters/:semester_id/offers" do
    subject(:offer_request) { get api_v1_semester_offers_path(semester) }

    before do
      create(:offer)
      offer_request
    end

    it { expect(response).to have_http_status(:ok) }
    it { expect(json_response["data"].size).to be 1 }
    it { expect(json_response["data"][0]["id"]).to eq offer.id.to_s }
  end

  describe "GET offers/:id" do
    subject(:offer_request) { get api_v1_offer_path(offer) }

    before do
      offer_request
    end

    it { expect(response).to have_http_status(:ok) }
    it { expect(json_response["data"]["id"]).to eq offer.id.to_s }

    it "serializes offer semester" do
      expect(json_response["data"]["relationships"]["semester"]["data"]["id"]).to be semester.id
    end

    it "serializes offer subject" do
      expect(json_response["data"]["relationships"]["subject"]["data"]["id"]).to be offer_subject.id
    end
  end
end
