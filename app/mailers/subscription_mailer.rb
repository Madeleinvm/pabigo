class SubscriptionMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscription_mailer.recordatorio.subject
  #
  def recordatorio(subscriber)
    @subscriber = subscriber

    mail to: @subscriber.email, subject: "Recordatorio" 
  end
end
