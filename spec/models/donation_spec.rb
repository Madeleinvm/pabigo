require 'rails_helper'

describe Donation, :type => :model do

  before do
    @user = User.new(
      email: "correo@pabigo.com",
      password: "P4ssw*rd")
    @dontype = "Monetaria"
    @name = "Transferencia"
    @quantity = "200"
    @description = "Se solicita una donación para ayudar a los perros de un refugio"
    @benefited = "Perro"
    @shipping = "Cuenta:020399288290922, Banco:Provincial, Rif:3424553, Cuenta Corriente, Nombre:Pabigo"
  end

	context "Donacion 1" do
		before do
			@donation = Donation.new(
        user: @user,
        dontype: @dontype,
        name: @name,
        quantity: @quantity,
        description: @description,
        benefited: @benefited,
        shipping: @shipping)
		end

  	it "is valid with valid attributes" do
    	expect(@donation).to be_valid
  	end
#Se debe colocar
    it "Se debe colocar tipo de donacion" do
			@donation.dontype = nil
			@donation.valid?
			expect(@donation.valid?).to eql(false)	
    end
    
    it "Se debe colocar nombre de donacion" do
			@donation.name = nil
			@donation.valid?
			expect(@donation.valid?).to eql(false)	
    end

    it "Se debe colocar cantidad de donacion" do
			@donation.quantity = nil
			@donation.valid?
			expect(@donation.valid?).to eql(false)	
    end

    it "Se debe colocar descripcion de donacion" do
			@donation.description = nil
			@donation.valid?
			expect(@donation.valid?).to eql(false)	
    end

    it "Se debe colocar beneficiado de donacion" do
			@donation.benefited = nil
			@donation.valid?
			expect(@donation.valid?).to eql(false)	
    end

    it "Se debe colocar direccion de envio de donacion" do
			@donation.shipping = nil
			@donation.valid?
			expect(@donation.valid?).to eql(false)	
    end
#Fin de se debe colocar

#Menos de lo indicado
		it "La descripcion no puede tener menos de 5 caracteres" do
			@donation.description = 'A'*4
			@donation.valid?
			expect(@donation.errors[:description]).not_to include("La descripcion no puede tener menos de 5 caracteres")
    end
    
    it "La direccion de envio no puede tener menos de 5 caracteres" do
			@donation.shipping = 'A'*4
			@donation.valid?
			expect(@donation.errors[:shipping]).not_to include("La direccion de envio no puede tener menos de 5 caracteres")
    end
#Fin de menos de lo indicado

#Más de lo indicado
    it "La descripcion no puede tener más de 1500 caracteres" do
      @donation.description = 'A'*2000
      @donation.valid?
      expect(@donation.errors[:description]).not_to include("La descripcion no puede tener más de 1500 caracteres")
    end

    it "El nombre no puede tener más de 30 caracteres" do
      @donation.name = 'A'*40
      @donation.valid?
      expect(@donation.errors[:name]).not_to include("El nombre no puede tener más de 30 caracteres")
    end

    it "La cantidad no puede tener más de 50 caracteres" do
      @donation.quantity = 'A'*60
      @donation.valid?
      expect(@donation.errors[:quantity]).not_to include("La cantidad no puede tener más de 50 caracteres")
    end

		it "La direccion de envio no puede tener más de 1500 caracteres" do
      @donation.shipping = 'A'*2000
      @donation.valid?
      expect(@donation.errors[:shipping]).not_to include("La direccion de envio no puede tener más de 1500 caracteres")
    end

#Fin de menos de lo indicado

	end
end


#RSpec.describe Donation, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"
#end
