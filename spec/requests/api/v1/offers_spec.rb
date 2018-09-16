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
      expect(json_response["data"]["relationships"]["subject"]["data"]["id"]).to eq offer_subject.id.to_s
    end
  end

  describe "GET /semesters/:semester_id/offers/:subject_id/offers" do
    subject(:offer_request) { get api_v1_semester_subject_offers_path(semester, offers_subject) }

    let(:offer) { create(:offer) }
    let(:semester) { offer.semester }
    let(:offers_subject) { offer.subject }
    let(:json_response) { JSON.parse(response.body) }
    let(:expected_offer) { ActiveModelSerializers::SerializableResource.new([offer]).to_json }

    before do
      create(:offer, semester: semester)
      offer_request
    end

    it { expect(response).to have_http_status(:ok) }

    it "returns the offer" do
      expect(response.body).to eq expected_offer
    end

    it "returns only expected offers" do
      expect(json_response["data"].size).to eq 1
    end
  end
end
