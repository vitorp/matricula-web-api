FactoryBot.define do
  factory :course do
    name { "CIÊNCIA DA COMPUTAÇÃO" }
    code { 370 }
    modality { Course.modalities[:presential] }
    shift { Course.shifts[:day] }
    degree { "Bacharel" }
  end
end
