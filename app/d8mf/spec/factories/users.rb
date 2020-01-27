FactoryBot.define do
    factory :user do
      name { Faker::Lorem.name }
      bio { Faker::Lorem.name }
      sex { ["male", "female"].sample }
      birthdate { Faker::Date.between(from: 30.years.ago, to: 18.years.ago) }
      interested_in { ["male", "female"].sample }
     end
end