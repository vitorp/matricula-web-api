require "rails_helper"

RSpec.describe Department, type: :model do
  it { is_expected.to have_many :courses }
  it { is_expected.to have_many :subjects }
  it { is_expected.to belong_to :campus }
end
