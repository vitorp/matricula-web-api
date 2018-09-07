require "rails_helper"

RSpec.describe FlowSubject, type: :model do
  it { is_expected.to belong_to :flow }
  it { is_expected.to belong_to :subject }
  it { is_expected.to validate_numericality_of(:order).only_integer }
end
