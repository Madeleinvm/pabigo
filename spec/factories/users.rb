FactoryBot.define do
  factory :user do
  	id { 1 }
    email { Faker::Internet.email }
    password { "doesn't matter" }
  end
end
