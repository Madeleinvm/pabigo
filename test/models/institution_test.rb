require 'test_helper'

class InstitutionTest < ActiveSupport::TestCase
    test "Nombre vacio - mensaje de error" do
        institution = Institution.new
        institution.address = "caracas, venezuela"
        institution.phone = "04241512904"
        institution.email = "noehrrr@gmail.com"
        institution.web = "www.adoptatumascota.com"
        assert_not institution.save, "Guardo institucion sin nombre"
        assert_equal ["Debe ingresar el nombre de la institución"], institution.errors[:name]
    end

    test "Dirección vacio - mensaje de error" do
        institution = Institution.new
        institution.name = "mascotas"
        institution.phone = "04241512904"
        institution.email = "noehrrr@gmail.com"
        institution.web = "www.adoptatumascota.com"
        assert_not institution.save, "Guardo institucion sin direccion"
        assert_equal ["Debe ingresar la direccion de la institución"], institution.errors[:address]
    end



    test "Email vacio - mensaje de error" do
        institution = Institution.new
        institution.name = "perros y gatos"
        institution.address = "caracas, venezuela"
        institution.phone = "04241512904"
        institution.web = "www.adoptatumascota.com"
        assert_not institution.save, "Guardo institucion sin email"
        assert_equal ["no es un formato válido"], institution.errors[:email]
    end

    test "Web vacio - mensaje de error" do
        institution = Institution.new
        institution.name = "pabigo"
        institution.address = "caracas, venezuela"
        institution.phone = "04241512904"
        institution.email = "noehrrr@gmail.com"
        assert_not institution.save, "Guardo institucion sin direccion web"
        assert_equal ["no es un formato válido"], institution.errors[:web]
    end

    test "institution valido" do
        institution = Institution.new(name: 'pabigo',
                            address: 'Caracas',
                            phone: '04241512904',
                            email: 'pabigo@gmail.com',
                            web: 'www.pabigo.com')
        assert institution.valid?
    end

    test "institution guarda" do
        institution = Institution.new(name: 'pabigo',
                            address: 'Caracas',
                            phone: '04241512904',
                            email: 'pabigo@gmail.com',
                            web: 'www.pabigo.com')
        assert institution.save
    end
end
