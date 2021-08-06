class UpsMailer < ApplicationMailer
  def seguimiento
    #puts adopter.to_yaml
    #@correo = follow_up.adopter_id
    @adopter = params[:adopter]
    @persona = User.find(@adopter.adopter_id)
    puts "Hola #{@persona.email}, un gusto conocerte"
    @greeting = "Por favor ingresa al link y añade información de como esta tu mascota"
    mail(to: @persona.email, subject: "Seguimiento")
    puts "adopter"
  end

end

