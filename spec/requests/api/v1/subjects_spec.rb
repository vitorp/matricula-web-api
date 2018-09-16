require "rails_helper"

RSpec.describe "Subjects", type: :request do
  describe "GET /subjects" do
    it "works! (now write some real specs)" do
      get api_v1_subjects_path
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET /semesters/:semester_id/subjects" do
    subject(:index_request) { get api_v1_semester_subjects_path(semester) }

    let!(:semester_subjects) { create_list(:subject, 2, semesters: [semester]) }
    let(:semester) { create(:semester) }
    let(:parsed_response) { JSON.parse(response.body) }
    let(:expected_subjects) { ActiveModelSerializers::SerializableResource.new(semester_subjects).to_json }

    before do
      create(:subject)
      index_request
    end

    it { expect(response).to have_http_status(:ok) }

    it "returns a subject array" do
      expect(response.body).to eq expected_subjects
    end

    it "returns only expected subjects" do
      expect(parsed_response["data"].size).to eq semester_subjects.size
    end
  end
end
