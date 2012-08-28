class EnquiryMailer < ActionMailer::Base

  # Send enquiry
  def enquiry_email(enquiry)
    @enquiry = enquiry
    mail to: "to@example.org", subject: "New enquiry for #{@enquiry.dog.name}", from: @enquiry.email
  end
end
