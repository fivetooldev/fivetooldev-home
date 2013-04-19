##
# ContactMailer sends email to a user when they submit a ContactMessage.
##
class ContactMailer < ActionMailer::Base
  default from: "geoff@fivetool.io",
    content_type: 'multipart/alternative'

  def signup_confirmation(contact_message)
    @contact_message = contact_message
    mail to: contact_message.email_address,
      bcc: 'geoff@fivetool.io',
      subject: "Thanks for your message",
      content_type: "multipart/alternative"
  end
end