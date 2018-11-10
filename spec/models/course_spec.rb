require "rails_helper"

RSpec.describe Course, type: :model do
  context "when testing associations..." do
    it { is_expected.to have_many :curriculums }
    it { is_expected.to belong_to :department }
  end

  context "when testing validations..." do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:code) }
    it { is_expected.to validate_presence_of(:modality) }
    it { is_expected.to validate_presence_of(:shift) }
    it { is_expected.to validate_presence_of(:degree) }
    it { is_expected.to define_enum_for(:shift).with(%i[day night]) }
    it { is_expected.to define_enum_for(:modality).with(%i[presential remote]) }
  end
end
