class ContactMailer < ActionMailer::Base
  default from: "geoff@fivetool.io"

  def signup_confirmation(contact_message)
    @contact_message = contact_message
    mail to: contact_message.email_address, subject: "Thanks for your message"
  end
end