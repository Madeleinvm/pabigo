class RequestNotificationMailer < ApplicationMailer
  def temporal_home_approved_email
    @temporal_home = params[:temporal_home]
    @request = params[:request]
    if @temporal_home.approved
      @approved = "aprobada"
    else
      @approved = "rechazada"
    end

    mail(to: @temporal_home.user.email, subject: "Tu solicitud de #{@request} fue #{@approved}")
  end
end
