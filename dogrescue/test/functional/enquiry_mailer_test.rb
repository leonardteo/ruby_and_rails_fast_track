require 'test_helper'

class EnquiryMailerTest < ActionMailer::TestCase
  test "enquiry_email" do
    mail = EnquiryMailer.enquiry_email
    assert_equal "Enquiry email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
