class Offer < ApplicationRecord
  enum shift: {
    day:   0,
    night: 1
  }
end
