require "rails_helper"

RSpec.describe Subject, type: :model do
  it { is_expected.to belong_to :department }
  it { is_expected.to have_many :curriculums_subjects }
  it { is_expected.to have_many :curriculums }
  it { is_expected.to have_many :requirements }
  it { is_expected.to have_many :offers }
end
