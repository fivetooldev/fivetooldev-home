class ContactMessagesController < ApplicationController

  def create
    @contact_message = ContactMessage.new(params[:contact_message])

    if @contact_message.save
      deliver_notification_email

      notice = 'Thanks for contacting us. We will be in touch shortly.'
    else
      notice =  'There was a problem with your submission. Please try again or email us at info@fivetool.io'
    end

    redirect_to root_path, notice: notice
  end

  private

  def deliver_notification_email
    ContactMailer.signup_confirmation(@contact_message).deliver
  end

end