require 'rails_helper'

#RSpec.describe History, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"

describe History, :type => :model do

	before do
		@user = User.new(
		email: "correo@corrreo.com",
		password: "pass123")
		@title = "titulo"  
		@description = "Esta es la descipción de la Historia que estoy creando la cual es parte de la TDD"
  	end

	context "Historia 1" do
		before do
			@history = History.new(
			title: @title,
			description: @description,
			user: @user)
		end


	  	it "is valid with valid attributes" do
	    	expect(@history).to be_valid
	  	end

		it "No es valido sin un titulo" do
			@history.title = nil
			@history.valid?
			expect(@history.valid?).to eql(false)	
		end

		it "No es valido sin una Descripción" do
			@history.description = nil
			@history.valid?
			expect(@history.valid?).to eql(false)
		end

		it "EL título no puede tener menos de 5 caracteres" do
			@history.title = 'A'*5
			@history.valid?
			expect(@history.errors[:title]).not_to include("EL título no puede tener menos de 5 caracteres")
		end

		it "La descripción no puede tener menos de 5 caracteres" do
			@history.description = 'A'*5
			@history.valid?
			expect(@history.errors[:description]).not_to include("La descripción no puede tener menos de 5 caracteres")
		end

		it "EL título no puede tener más de 50 caracteres" do
			@history.title = 'A'*75
			@history.valid?
			expect(@history.errors[:title]).not_to include("EL título no puede tener más de 50 caracteres")
		end

		it "La descripción no puede tener más de 1500 caracteres" do
			@history.description = 'A'*2000
			@history.valid?
			expect(@history.errors[:description]).not_to include("La descripción no puede tener más de 1500 caracteres")
		end
	end
end
