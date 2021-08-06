FactoryBot.define do
  factory :phone do
    number { "MyString" }
    phone_type { nil }
    association :user
  end
end
