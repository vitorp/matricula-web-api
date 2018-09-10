require "rails_helper"

RSpec.describe Slot, type: :model do
  it { is_expected.to belong_to :offer }
end
