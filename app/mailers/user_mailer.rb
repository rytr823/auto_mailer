class UserMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.trends.subject
  #
  def trends(user)
    @user = user
    @image = 'sample.jpg'
    attachments.inline[@image] = File.read('./tmp/sample.jpg')
    mail to: @user.email, subject: "今月の業界動向"
  end
end
