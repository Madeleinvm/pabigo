# Preview all emails at http://localhost:3000/rails/mailers/adoption_mailer
class AdoptionMailerPreview < ActionMailer::Preview
 def welcome_email
    AdoptionMailer.with(user: User.first).welcome_email
  end
end
