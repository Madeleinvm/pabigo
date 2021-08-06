require 'rails_helper'

# RSpec.describe Ask, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

RSpec.describe Ask, :type => :model do

	# before do
	# 	@ask = Ask.new(
	# 	email: "correo@corrreo.com",
	# 	password: "pass123")
	# 	@campo = 'este es mi campo de preguntas'
	# 	@answer = "Respuesta a la pregunta"
  #   @tipo = "Gatos"
  # 	end


		before do
      campo = "este es mi campo de preguntas"
      answer = "Esta es la respuesta de mi campo"
      tipo = "Gatos"
      id = 1
			@ask = Ask.new(
			campo: campo,
			answer: answer,
			tipo: tipo,
      id: id,)
		end


  it "El campo de las preguntas no puede estar vacio" do
			@ask.campo = nil
			@ask.valid?
			expect(@ask.valid?).to eql(false)
		end

  it "Debe existir una respuesta a las preguntas" do
  		@ask.answer = nil
  		@ask.valid?
  		expect(@ask.valid?).to eql(false)
  	end

    it "Debe existir un tipo de animal" do
    		@ask.tipo = nil
    		@ask.valid?
    		expect(@ask.valid?).to eql(false)
    	end


      it "La pregunta no debe tener menos de 10 caracteres" do
        @ask.campo = "a" * 9
        expect(@ask).to be_invalid
      end

      it "La respuesta no debe tener menos de 10 caracteres" do
        @ask.answer = "a" * 9
        expect(@ask).to be_invalid
      end

      it "La pregunta no debe tener mas de 5000 caracteres" do
        @ask.campo = "a" * 5001
        expect(@ask).to be_invalid
      end

      it "La respuesta no debe tener mas de 5000 caracteres" do
        @ask.answer = "a" * 5001
        expect(@ask).to be_invalid
      end

			it "El tipo animal no debe ser diferente a 'Perros' o 'Gatos'" do
					@ask.tipo = nil
					@ask.valid?
					expect(@ask.valid?).to eql(false)
				end

end
