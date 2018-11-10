require "rails_helper"

RSpec.describe OfferProfessor, type: :model do
  context "when testing associations..." do
    it { is_expected.to belong_to :offer }
    it { is_expected.to belong_to :professor }
  end
end
