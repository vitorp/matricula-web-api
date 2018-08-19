class Course < ApplicationRecord
  enum shift: {
    day:   0,
    night: 1
  }

  enum modality: {
    presential: 0,
    remote:     1
  }
end
