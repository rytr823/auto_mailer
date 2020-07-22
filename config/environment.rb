# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDGRID_USERNAME'], # Send Gridから送られてきているユーザ名
  :password => ENV['SENDGRID_PASSWORD'], # ユーザ名に対応するパスワード
  :domain => 'rytr823@gmai.com', # Send Grid登録時に設定した各自のドメイン名
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}