require "rails_helper"

RSpec.describe Flow, type: :model do
  it { is_expected.to belong_to :curriculum }
  it { is_expected.to have_many :flow_periods }
end
