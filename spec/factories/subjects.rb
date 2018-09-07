FactoryBot.define do
  factory :subject do
    name { "Algoritmos e Programação de Computadores" }
    code { 113_476 }
    level { Subject.levels[:graduation] }
    department
  end
end
