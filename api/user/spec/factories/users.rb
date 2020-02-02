FactoryBot.define do
    factory :user do
      name { Faker::FunnyName.name }
      bio { Faker::Lorem.sentences(number: 1) }
      sex { ["male", "female"].sample }
      birthdate { Faker::Date.between(from: 30.years.ago, to: 18.years.ago) }
      interested_in { ["male", "female"].sample }
     end
end