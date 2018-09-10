require "rails_helper"

RSpec.describe CurriculumsSubject, type: :model do
  it { is_expected.to belong_to :curriculum }
  it { is_expected.to belong_to :subject }
end
