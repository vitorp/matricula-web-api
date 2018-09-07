require "rails_helper"

RSpec.describe Offer, type: :model do
  it { is_expected.to belong_to :subject }
  it { is_expected.to belong_to :semester }
  it { is_expected.to have_many :professors }
end
