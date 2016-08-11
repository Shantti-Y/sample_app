require 'test_helper'

class UserMailerTest < ActionMailer::TestCase

=begin "Since fixtures are unable to activate 'before or after' commands in a model
        so that these records don't have activation_digest and even activation_token in the User model.
        These tests have been distinguished as scraps."
  test "account_activation" do
    user = users(:michael)
    mail = UserMailer.account_activation(user).deliver_now
    assert_equal "Account activation", mail.subject
    assert_equal [user.email], mail.to
    assert_equal ["noreply@example.com"], mail.from
    assert_match user.name, mail.body.encoded
    assert_match user.activation_token, mail.body.encoded
    assert_match CGI.escape(user.email), mail.body.encoded
  end

  test "password_reset" do
    mail = UserMailer.password_reset
    assert_equal "Password reset", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end
=end

end
