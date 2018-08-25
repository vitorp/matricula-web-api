FactoryBot.define do
  factory :offer do
    class_letter { "A" }
    shift { Offer.shifts[:day] }
    enrolled_count { 41 }
    max_enrolled { 40 }
    credits_study { 6 }
    credits_theory { 4 }
    credits_extension { 0 }
    credits_pratical { 2 }
    obs1 { false }
    obs2 { true }
    obs3 { false }
  end
end
