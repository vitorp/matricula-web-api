require "rails_helper"

RSpec.describe Slot, type: :model do
  context "when testing associations..." do
    it { is_expected.to belong_to :offer }
  end

  context "when testing validations..." do
    it { is_expected.to validate_presence_of(:location) }
    it { is_expected.to validate_presence_of(:weekday) }
    it { is_expected.to validate_presence_of(:start_time) }
    it { is_expected.to validate_presence_of(:end_time) }
  end
end
