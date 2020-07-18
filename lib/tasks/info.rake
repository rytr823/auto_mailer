namespace :info do
  desc '業界動向のメールを発行する'
  task trends: :environment do
    users = User.all
    
    users.each do |user|
      UserMailer.trends(user).deliver
    end
  end
end
