FactoryBot.define do
  factory :new do
    title { "Moo" }
    content1 { FFaker::Lorem.paragraphs(3) }
    content2 { FFaker::Lorem.paragraphs(3) }
    visits { 1 }
    user_id { 1 }
    association :user
  end
end
