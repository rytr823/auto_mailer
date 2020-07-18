# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  # Preview this email at (http://localhost:3000/rails/mailers/user_mailer/trends)
  def trends
    UserMailer.trends(User.first)
  end
end
