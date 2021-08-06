require 'test_helper'

class AskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @ask = ask(:one)
  end

    test "La pregunta no puede estar vacia" do
      @ask = Ask.new
      @ask.campo = "Pregunta sobre los gatos"
      assert_not @ask.save, "Debe llenar el campo de las preguntas para guardar"
    end

    test 'La pregunta no debe ser menor a 10 caracteres' do
       @ask = Ask.new
       @ask.campo = 'a' * 10
       assert_not @ask.valid?, "Debe formular una pregunta con mas caracteres"
     end

   test 'La pregunta no debe ser mayor a 1000 caracteres' do
      @ask = Ask.new
      @ask.campo = 'a' * 999
      assert_not @ask.valid?, "Sea mas preciso con sus preguntas"
    end

    test "La respuesta no puede estar vacia" do
      @ask = Ask.new
      @ask.answer = "Rspuesta sobre los perros"
      assert_not @ask.save, "Debe llenar el campo de las respuesta para guardar"
    end

    test 'La respuesta no debe ser menor a 10 caracteres' do
       @ask = Ask.new
       @ask.answer = 'a' * 10
       assert_not @ask.valid?, "Debe formular una respuesta con mas caracteres"
     end

     test 'La respuesta no debe ser mayor a 1000 caracteres' do
        @ask = Ask.new
        @ask.answer = 'a' * 999
        assert_not @ask.valid?, "Sea mas preciso con sus respuestas"
      end


    test "El tipo de animal no puede estar vacio" do
    	  @ask = Ask.new
    	  @ask.tipo = 'Gato' || @ask.tipo = 'Perro'
    	  assert_not @ask.valid?, "Debe escoger entre el faq de perros o gatos"
    end



end
