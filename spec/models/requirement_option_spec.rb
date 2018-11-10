require "rails_helper"

RSpec.describe RequirementOption, type: :model do
  context "when testing associations" do
    it { is_expected.to belong_to :subject }
    it { is_expected.to belong_to :requirement }
  end
end
