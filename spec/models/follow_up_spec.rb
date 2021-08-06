require 'rails_helper'

describe FollowUp, :type => :model do

  before do
    @user = User.new(
      email: "correo@pabigo.com",
      password: "P4ssw*rd")
    @adoption = Adoption.new(
      adoption_date: "2018-01-07 05:14:07",
        users_id: @user,
        adopter_id: @user)
    @description = "Prueba TDD"
  end

	context "Seguimiento 1" do
		before do
			@follow_up = FollowUp.new(
        adoption_id: @adoption,
        description: @description)
		end

  	it "is valid with valid attributes" do
    	expect(@follow_up).to be_valid
  	end
#Se debe colocar
    it "Se debe colocar descripcion de seguimiento" do
			@follow_up.description = nil
			@follow_up.valid?
			expect(@follow_up.valid?).to eql(false)	
    end
#Fin de se debe colocar

#Menos de lo indicado
		it "La descripcion no puede tener menos de 5 caracteres" do
			@follow_up.description = 'A'*4
			@follow_up.valid?
			expect(@follow_up.errors[:description]).not_to include("La descripcion no puede tener menos de 5 caracteres")
    end
#Fin de menos de lo indicado

#Más de lo indicado
    it "La descripcion no puede tener más de 1500 caracteres" do
      @follow_up.description = 'A'*2000
      @follow_up.valid?
      expect(@follow_up.errors[:description]).not_to include("La descripcion no puede tener más de 1500 caracteres")
    end
#Fin de menos de lo indicado

	end
end

#RSpec.describe FollowUp, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"
#end
