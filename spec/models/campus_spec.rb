require "rails_helper"

RSpec.describe Campus, type: :model do
  it { is_expected.to have_many :departments }
end
