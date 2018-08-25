FactoryBot.define do
  factory :semester do
    start_date { "2018-08-13 00:00:00" }
    end_date { "2018-12-07 00:00:00" }
    period { 2 }
    year { 2018 }
  end
end
