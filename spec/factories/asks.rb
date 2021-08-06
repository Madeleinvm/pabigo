FactoryBot.define do
  factory :ask do
    campo { "MyText" }
    answer { "MyText" }
    tipo { "MyString" }
    user_id { 1 }
    user { nil }
  end
end
