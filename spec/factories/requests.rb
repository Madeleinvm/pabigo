FactoryBot.define do
  factory :request do
    tipo { "MyString" }
    descripcion { "MyText" }
    direccion { "MyText" }
    cuenta { 1 }
  end
end
