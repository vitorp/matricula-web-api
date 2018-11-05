require "rails_helper"

RSpec.describe "Subjects", type: :request do
  let(:json_response) { JSON.parse(response.body) }

  describe "GET /semesters/:semester_id/subjects" do
    subject(:subject_request) { get api_v1_semester_subjects_path(semester) }

    let!(:semester_subjects) { create_list(:subject, 2, semesters: [semester]) }
    let(:semester) { create(:semester) }
    let(:expected_subjects) { ActiveModelSerializers::SerializableResource.new(semester_subjects).to_json }

    before do
      create(:subject)
      subject_request
    end

    it { expect(response).to have_http_status(:ok) }

    it "returns an array of subjects" do
      expect(response.body).to eq expected_subjects
    end

    it "returns only expected subjects" do
      expect(json_response["data"].size).to eq semester_subjects.size
    end
  end

  describe "GET /department/:department_id/subjects" do
    subject(:subject_request) { get api_v1_department_subjects_path(department) }

    let!(:department_subjects) { create_list(:subject, 2, department: department) }
    let(:department) { create(:department) }
    let(:expected_subjects) { ActiveModelSerializers::SerializableResource.new(department_subjects).to_json }

    before do
      create(:subject)
      subject_request
    end

    it { expect(response).to have_http_status(:ok) }

    it "returns an array of subjects" do
      expect(response.body).to eq expected_subjects
    end

    it "returns only expected subjects" do
      expect(json_response["data"].size).to eq department_subjects.size
    end
  end

  describe "GET /subjects/:id" do
    subject(:subject_request) { get api_v1_subject_path(subject_record) }

    let(:subject_record) { create(:subject) }
    let(:department) { subject_record.department }

    before do
      subject_request
    end

    it { expect(response).to have_http_status(:ok) }
    it { expect(json_response["data"]["id"]).to eq subject_record.id.to_s }

    it "serializes subject department" do
      expect(json_response["data"]["relationships"]["department"]["data"]["id"]).to be department.id
    end
  end
end
