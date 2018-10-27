require "rails_helper"

RSpec.describe Course, type: :model do
  it { is_expected.to have_many :curriculums }
  it { is_expected.to belong_to :department }
  it { is_expected.to have_and_belong_to_many(:prerequisites) }
end
