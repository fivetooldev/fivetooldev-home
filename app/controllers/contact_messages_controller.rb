class ContactMessagesController < ApplicationController

  # POST /contact_messages
  # POST /contact_messages.json
  def create
    @contact_message = ContactMessage.create(params[:contact_message])

    redirect_to root_path, notice: 'Thanks for contacting us. We will be in touch shortly.'
  end

end