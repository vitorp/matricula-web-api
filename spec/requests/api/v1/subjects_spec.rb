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
    let(:expected_subjects) do
      semester_subjects.map do |subject|
        ActiveModelSerializers::Deserialization.jsonapi_parse(SubjectSerializer.new(subject).to_json)
      end
    end

    before do
      create(:subject)
      index_request
    end

    it { expect(response).to have_http_status(:ok) }

    it "returns a subject array" do
      expect(JSON.parse(response.body)).to include(*expected_subjects)
    end

    it "returns only expected subjects" do
      expect(JSON.parse(response.body)["data"].size).to eq expected_subjects.size
    end
  end
end
