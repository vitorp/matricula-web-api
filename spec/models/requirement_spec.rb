require "rails_helper"

RSpec.describe Requirement, type: :model do
  it { is_expected.to have_many :requirement_options }
  it { is_expected.to belong_to :subject }
  it { is_expected.to have_many :optional_subjects }

  describe "optional_subjects" do
    subject(:optional_subjects) { requirement.optional_subjects }

    let(:requirement) { create(:requirement) }
    let(:expected_options) { create_list(:requirement_option, 2, requirement: requirement).map(&:subject) }
    let(:unexpected_option) { create(:requirement_option).subject }

    it { is_expected.to include(*expected_options) }
    it { is_expected.not_to include(*unexpected_option) }
  end
end
