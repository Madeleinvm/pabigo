class AdoptionMailer < ApplicationMailer


  def adoptados (adoption) 
    @mensaje = "El usuario #{adoption.adopter_id} acaba de adoptar la mascota (mascota). 
    			Contacto:  04128952436,
    			Correo: fernanrainier@gmail.com"  
    mail(to: "ucabdesarrollo@gmail.com", subject: "Contacto de Adopcion")
  end

  def adoptados2 (adoption)
    @mensaje = "Gracias usuario #{adoption.users_id} por adoptar una de nuestras mascotas! 
    			Contacto: 04127538977
    			Correo: ucabdesarrollo@gmail.com"  
    mail(to: "fernanrainier@gmail.com", subject: "Contacto de persona que puso en adopcion")
  end
end


