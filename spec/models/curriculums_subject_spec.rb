require "rails_helper"

RSpec.describe CurriculumsSubject, type: :model do
  context "when testing associations..." do
    it { is_expected.to belong_to(:curriculum) }
    it { is_expected.to belong_to(:subject) }
  end

  context "when testing validations..." do
    it { is_expected.to validate_presence_of(:enforcement) }
    it { is_expected.to define_enum_for(:enforcement).with(%i[required optional]) }
  end
end
