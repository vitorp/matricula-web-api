FactoryBot.define do
  factory :offer do
    class_letter { "A" }
    shift { Offer.shifts[:day] }
    enrolled_count { 41 }
    max_enrolled { 40 }
    credits_of_study { 6 }
    credits_of_theory { 4 }
    credits_of_extension { 0 }
    credits_of_practice { 2 }
    obs1 { false }
    obs2 { true }
    obs3 { false }
    subject
    semester
  end
end
