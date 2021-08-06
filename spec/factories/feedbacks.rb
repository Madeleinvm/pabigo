FactoryBot.define do
  factory :feedback do
    points { 1.5 }
    comment { "MyString" }
    user_gives_fb_id { "" }
    user_recives_fb_ide { "MyString" }
  end
end
