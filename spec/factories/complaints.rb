FactoryBot.define do
  factory :complaint do
    abusive_name { "MyString" }
    institution { nil }
    description { "MyText" }
    place { "MyString" }
    dog { false }
    pet { nil }
  end
end
