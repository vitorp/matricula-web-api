require "rails_helper"

RSpec.describe FlowSubject, type: :model do
  context "when testing associations..." do
    it { is_expected.to belong_to :flow }
    it { is_expected.to belong_to :subject }
  end

  context "when testing validations..." do
    it { is_expected.to validate_numericality_of(:order).only_integer }
  end
end
