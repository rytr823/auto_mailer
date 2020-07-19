require 'rails_helper'

describe UserMailer, type: :mailer do
  describe '#trebds(user)' do
    users = User.all 
    subject(:mail) do
      users.earh do |user|
      UserMailer.trends(user)   
      described_class.trends(user).deliver_now
      ActionMailer::Base.deliveries.last
      end
    end

    context "when trends" do
      it {expect(mail.form.first).to eq('<rytr823@gmail.com>')}
      it {expect(mail.to.first).to eq('rh_mc_bb@yahoo.co.jp')}
      it {expect(mail.subject).tp eq("今月の業界動向")}
    end
  end
end
    
    






# class UserMailerTest < ActionMailer::TestCase
#   test 'trends' do
#     mail = UserMailer.trends
#     assert_equal 'Trends', mail.subject
#     assert_equal ['to@example.org'], mail.to
#     assert_equal ['from@example.com'], mail.from
#     assert_match 'Hi', mail.body.encoded
#   end
# end
