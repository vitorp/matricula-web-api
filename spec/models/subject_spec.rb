require "rails_helper"

RSpec.describe Subject, type: :model do
  context "when testing associations..." do
    it { is_expected.to belong_to :department }
    it { is_expected.to have_many(:curriculums_subjects).dependent(:destroy) }
    it { is_expected.to have_many(:curriculums).through(:curriculums_subjects) }
    it { is_expected.to have_many(:requirements).dependent(:destroy) }
    it { is_expected.to have_many(:offers).dependent(:destroy) }
    it { is_expected.to have_many(:semesters).through(:offers) }
  end

  context "when testing validations..." do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:code) }
    it { is_expected.to validate_presence_of(:level) }
    it { is_expected.to define_enum_for(:level).with(%i[graduation]) }
  end
end
