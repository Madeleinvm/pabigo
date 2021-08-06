FactoryBot.define do
  factory :temporal_home do
    id_card { "MyString" }
    dog { false }
    pet_characteristics { "MyText" }
    home_type { "MyString" }
    existing_pets { "MyText" }
    kind_of_help { "MyString" }
    protection_duration { "2019-01-09" }
    reference_full_name { "MyString" }
    reference_phone { "MyString" }
    reference_id_card { "MyString" }
  end
end
