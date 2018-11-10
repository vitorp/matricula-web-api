require "rails_helper"

RSpec.describe Offer, type: :model do
  context "when testing associations..." do
    it { is_expected.to belong_to :subject }
    it { is_expected.to belong_to :semester }
    it { is_expected.to have_many(:professors).through(:offer_professors) }
    it { is_expected.to have_many(:offer_professors).dependent(:destroy) }
  end

  context "when testing validations..." do
    it { is_expected.to validate_presence_of(:class_letter) }
    it { is_expected.to validate_presence_of(:shift) }
    it { is_expected.to define_enum_for(:shift).with(%i[day night]) }
    it { is_expected.to validate_presence_of(:enrolled_count) }
    it { is_expected.to validate_presence_of(:max_enrolled) }
    it { is_expected.to validate_presence_of(:credits_of_theory) }
    it { is_expected.to validate_presence_of(:credits_of_extension) }
    it { is_expected.to validate_presence_of(:credits_of_practice) }
    it { is_expected.to validate_presence_of(:credits_of_study) }
    it { is_expected.to allow_value([true, false]).for(:obs1) }
    it { is_expected.to allow_value([true, false]).for(:obs2) }
    it { is_expected.to allow_value([true, false]).for(:obs3) }
  end
end
