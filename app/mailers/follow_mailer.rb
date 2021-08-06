class FollowMailer < ApplicationMailer
    def follow
        #puts follow_up.to_yaml
        @adoptionss = params[:adoptionss]
        @greeting = "Llego información de la mascota que diste en adopción"
        mail(to: @adoptionss.user.email, subject: "Seguimiento")
    end
end
