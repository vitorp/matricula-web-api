require "rails_helper"

RSpec.describe Semester, type: :model do
  context "when testing associations..." do
    it { is_expected.to have_many(:offers).dependent(:destroy) }
    it { is_expected.to have_many(:subjects).through(:offers) }
  end

  context "when testing validations..." do
    it { is_expected.to validate_presence_of(:start_date) }
    it { is_expected.to validate_presence_of(:end_date) }
    it { is_expected.to validate_presence_of(:period) }
    it { is_expected.to validate_presence_of(:year) }
  end

  describe ".subjects" do
    it "returns offer subject" do
      offer = create(:offer)
      expect(offer.semester.subjects.first).to be_eql offer.subject
    end
  end
end
