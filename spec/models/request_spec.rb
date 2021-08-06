require 'rails_helper'

# RSpec.describe Ask, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

# Modelo de request o solicitud en ingles

RSpec.describe Request, :type => :model do


# inicializar variables

		before do
      descripcion = "este es mi campo de preguntas"
      direccion = "Esta es la respuesta de mi campo"
      tipo = "Gatos"
      id = 1
			@request = Request.new(
			descripcion: descripcion,
			direccion: direccion,
			tipo: tipo,
      id: id,)
		end

# pruebas unitarias de tipo de su solicitud

     it "Debe seleccionar una opcion entre Monetario, Comida, Medicina, Accesorios y Otros" do
    		@request.tipo = nil
    		@request.valid?
    		expect(@request.errors[:tipo]).not_to include("Debe seleccionar una opcion entre Monetario, Comida, Medicina, Accesorios y Otros")
    	end


			it "La opcion no puede estar vacia" do
     		@request.tipo = nil
     		@request.valid?
     		expect(@request.errors[:tipo]).not_to include("La opcion no puede estar vacia")
     	end

# pruebas unitarias de la descripcion de su solicitud

			it "Querido Solicitante, la descripción de su pedido debe existir." do
				@request.descripcion = nil
				@request.valid?
				expect(@request.errors[:descripcion]).to include("Querido Solicitante, la descripción de su pedido debe existir.")
			end

			it "Querido Usuario, su descripcion debe contener más de 10 carácteres." do
        @request.descripcion = "a" * 9
        @request.valid?
				expect(@request.errors[:descripcion]).to include("Querido Usuario, su descripcion debe contener más de 10 carácteres.")
			end


			it "Lo siento, su descripcion debe ser menor a 5000 caracteres." do
				@request.descripcion = "a" * 5001
				@request.valid?
				expect(@request.errors[:descripcion]).to include("Lo siento, su descripcion debe ser menor a 5000 caracteres.")
			end

# pruebas unitarias de la direccion de su solicitud

			it "Querido Usuario, la dirección de su solicitud debe existir." do
				@request.direccion = nil
				@request.valid?
				expect(@request.errors[:direccion]).to include("Querido Usuario, la dirección de su solicitud debe existir.")
			end

			it "Querido Usuario, su dirección debe contener más de 10 carácteres." do
				@request.direccion = "a" * 9
				@request.valid?
				expect(@request.errors[:direccion]).to include("Querido Usuario, su dirección debe contener más de 10 carácteres.")
			end

			it  "Lo siento, su direccion debe ser menor a 5000 caracteres." do
				@request.direccion = "a" * 5001
				@request.valid?
				expect(@request.errors[:direccion]).to include( "Lo siento, su direccion debe ser menor a 5000 caracteres.")
			end

end
