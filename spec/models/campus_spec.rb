require "rails_helper"

RSpec.describe Campus, type: :model do
  context "when testing associations" do
    it { is_expected.to have_many(:departments).dependent(:destroy) }
  end
  context "when testing validations" do
    it { is_expected.to validate_presence_of(:name) }
  end
end
