FactoryBot.define do
  factory :profile do
    name { "MyString" }
    last_name { "MyString" }
    male { false }
    user_id { 1 }
    association :user
  end
end
