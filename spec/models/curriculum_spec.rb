require "rails_helper"

RSpec.describe Curriculum, type: :model do
  it { is_expected.to belong_to :course }
  it { is_expected.to have_many :curriculums_subjects }
  it { is_expected.to have_many :subjects }

  describe ".subjects" do
    subject(:subjects) { curriculum.subjects }

    let(:curriculum) { create(:curriculum) }

    before do
      create(:curriculums_subject, curriculum: curriculum, enforcement: :required)
      create(:curriculums_subject, curriculum: curriculum, enforcement: :optional)
    end

    it "filters required subjects" do
      expect(subjects.required.size).to eq 1
    end

    it "filters optional subjects" do
      expect(subjects.optional.size).to eq 1
    end
  end
end
