require "rails_helper"

RSpec.describe Professor, type: :model do
  context "when testing associations..." do
    it { is_expected.to have_many(:offers).through(:offer_professors) }
    it { is_expected.to have_many(:offer_professors).dependent(:destroy) }
  end

  context "when testing validations..." do
    it { is_expected.to validate_presence_of(:name) }
  end
end
