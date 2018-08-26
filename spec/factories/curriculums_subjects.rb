FactoryBot.define do
  factory :curriculums_subject do
    curriculum
    subject
    enforcement { CurriculumsSubject.enforcements[:required] }
  end
end
