require "rails_helper"

RSpec.describe Curriculum, type: :model do
  context "when testing associations..." do
    it { is_expected.to belong_to :course }
    it { is_expected.to have_many(:curriculums_subjects).dependent(:destroy) }
    it { is_expected.to have_many(:subjects).through(:curriculums_subjects) }
  end

  context "when testing validations..." do
    it { is_expected.to validate_presence_of(:credits_needed) }
    it { is_expected.to validate_presence_of(:min_credits_per_period) }
    it { is_expected.to validate_presence_of(:max_credits_per_period) }
    it { is_expected.to validate_presence_of(:min_periods) }
    it { is_expected.to validate_presence_of(:max_periods) }
    it { is_expected.to validate_presence_of(:max_credits_free_module) }
  end

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
