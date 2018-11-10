require "rails_helper"

RSpec.describe Department, type: :model do
  context "when testing associations..." do
    it { is_expected.to have_many(:courses).dependent(:destroy) }
    it { is_expected.to have_many(:subjects).dependent(:destroy) }
    it { is_expected.to belong_to(:campus) }
  end

  context "when testing validations..." do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:code) }
    it { is_expected.to validate_presence_of(:initials) }
  end
end
