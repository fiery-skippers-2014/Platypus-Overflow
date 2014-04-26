FactoryGirl.define do

  factory :question do
    title { Faker::Lorem.word }
    body { Faker::Lorem.sentence }
  end

  factory :answer do
    response {Faker::Lorem.sentence}
  end

  factory :user do
    name { Faker::Lorem.word }
    email { Faker::Internet.email }
    password_digest 123
  end
end