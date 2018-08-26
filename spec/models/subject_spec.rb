require "rails_helper"

RSpec.describe Subject, type: :model do
  it { is_expected.to have_many :curriculums_subjects }
  it { is_expected.to have_many :curriculums }
end
