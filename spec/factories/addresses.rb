FactoryBot.define do
  factory :address do
    line1 { "MyString" }
    line2 { "MyString" }
    zip_code { "MyString" }
    city { nil }
    addressable { nil }
    association :profile
  end
end
