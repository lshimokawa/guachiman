require 'test_helper'

class NotificationTest < ActionMailer::TestCase
  test "server_failed" do
    mail = Notification.server_failed
    assert_equal "Server failed", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
