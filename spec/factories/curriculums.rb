FactoryBot.define do
  factory :curriculum do
    credits_needed 214
    min_credits_per_period 14
    max_credits_per_period 28
    min_periods 8
    max_periods 14
    max_credits_free_module 24
  end
end
