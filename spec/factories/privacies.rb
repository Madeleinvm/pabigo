FactoryBot.define do
  factory :privacy do
    show_full_name { false }
    show_email { false }
    show_profile_picture { false }
    show_phones { false }
    show_address { false }
    user { nil }
  end
end
