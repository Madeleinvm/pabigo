# Preview all emails at http://localhost:3000/rails/mailers/ups_mailer
class UpsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/ups_mailer/seguimiento
  def seguimiento
    UpsMailerMailer.seguimiento
  end

end
