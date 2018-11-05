require "rails_helper"

RSpec.describe Semester, type: :model do
  it { is_expected.to have_many :offers }
  it { is_expected.to have_many :subjects }

  describe ".subjects" do
    it "returns offer subject" do
      offer = create(:offer)
      expect(offer.semester.subjects.first).to be_eql offer.subject
    end
  end
end
