##
# Controller for contact us messages.
##
class ContactMessagesController < ApplicationController

  def create
    build_contact_message

    if @contact_message.save
      deliver_notification_email

      set_success_flash_notice
    else
      set_error_flash_message
    end

    redirect_to root_path
  end

  private

  def build_contact_message
    @contact_message = ContactMessage.new(contact_message_params)
  end

  def contact_message_params
    params.require(:contact_message).permit(:email_address, :message, :name)
  end

  def deliver_notification_email
    ContactMailer.signup_confirmation(@contact_message).deliver
  end

  def set_success_flash_notice
    flash[:notice] = 'Thanks for contacting us. We will be in touch shortly.'
  end

  def set_error_flash_message
    flash[:error] = <<-heredoc
      There was a problem with your submission. Please try again or email
      us at info@fivetool.io.
    heredoc
  end

end