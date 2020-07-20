require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test 'trends(user)' do
    email = UserMailer.trends

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal 'Trends', mail.subject
    assert_equal [ENV['YAHOO_EMAIL']], mail.to
    assert_equal [ENV['EMAIL_HIDDEN']], mail.from
    # assert_match 'Hi', mail.body.encoded
  end
end
