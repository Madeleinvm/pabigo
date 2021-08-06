class ApplicationMailer < ActionMailer::Base
  default from: "'Pabigo'  <newsletter@pabigo.com>"
  layout 'mailer'
end
