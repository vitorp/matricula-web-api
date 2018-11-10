require "rails_helper"

RSpec.describe Flow, type: :model do
  context "when testing associations..." do
    it { is_expected.to belong_to(:curriculum) }
    it { is_expected.to have_many(:flow_subjects).dependent(:destroy) }
    it { is_expected.to have_many(:subjects).through(:flow_subjects) }
  end

  context "when testing validations..." do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe ".subjects_by_period" do
    subject(:subjects_by_period) { flow.subjects.by_period(selected_period) }

    let(:flow) { create(:flow) }
    let(:subjects_order1) { create_list(:flow_subject, 1, flow: flow, order: 1).map(&:subject) }
    let(:subjects_order2) { create_list(:flow_subject, 2, flow: flow, order: 2).map(&:subject) }

    context "when the period is 1" do
      let(:selected_period) { 1 }

      it { is_expected.to include(*subjects_order1) }
      it { is_expected.not_to include(*subjects_order2) }
    end

    context "when the period is 2" do
      let(:selected_period) { 2 }

      it { is_expected.to include(*subjects_order2) }
      it { is_expected.not_to include(*subjects_order1) }
    end
  end
end
