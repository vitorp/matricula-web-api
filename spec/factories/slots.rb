FactoryBot.define do
  factory :slot do
    location { "PAT AT 117" }
    weekday { 1 }
    start_time { "2018-08-25 16:00:00" }
    end_time { "2018-08-25 17:50:00" }
    offer
  end
end
