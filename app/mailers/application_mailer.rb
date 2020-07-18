class ApplicationMailer < ActionMailer::Base
  default from: ENV['USERNAME_HIDEEN']
  layout 'mailer'
end
