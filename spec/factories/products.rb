FactoryBot.define do
  factory :product do
    name { "MyString" }
    description { "MyText" }
    type { "" }
    qty { 1 }
    users { nil }
  end
end
