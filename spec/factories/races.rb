FactoryBot.define do 
  factory :races do
    name { 'MyString' }
  	height { 1.5 }
    weight { 1.5 }
    fur { "MyString" }
    physical_details { "MyString" }
    character { "MyString" }
    care { "MyString" }
    health { "MyString" }
    story { "MyString" }
    color { "MyString" }
  	affectivity { 1 }
    docility { 1 }
    bustling { 1 }
    playful { 1 }
    grooming { 1 }
    hair_losener { 1 }
    kids { 1 }
    species {"MyString"}
  end
end