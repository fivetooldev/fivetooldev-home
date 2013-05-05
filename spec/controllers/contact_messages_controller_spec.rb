require 'spec_helper'

describe ContactMessagesController, :blog_entry, :controller do

  def attributes
    {'this' => 'that'}
  end

  describe "routing", :routing do
    it { should_not route(:get, '/contact_messages').to(action: :index) }
    it { should_not route(:get, '/contact_messages/1')
      .to(action: :show, id: 1) }
    it { should_not route(:get, '/contact_messages/1/edit')
      .to(action: :edit, id: 1) }
    it { should_not route(:get, '/contact_messages/new')
      .to(action: :new) }
    it { should route(:post, '/contact_messages').to(action: :create) }
    it { should_not route(:put, '/contact_messages/1')
      .to(action: :update, id: 1) }
    it { should_not route(:delete, '/contact_messages/1')
      .to(action: :destroy, id: 1) }
  end

  describe "POST create" do
    before(:each) do
      controller.stubs(deliver_notification_email: true)
    end

    describe "with valid params" do
      before do
        ContactMessage.any_instance.stubs(save: true)

        post :create, contact_message: attributes_for(:contact_message)
      end

      it { should redirect_to(root_path) }
      it { should respond_with(:redirect) }
      it { should set_the_flash[:notice]
        .to('Thanks for contacting us. We will be in touch shortly.')
      }

      it "sends an email" do
        controller.should have_received(:deliver_notification_email)
      end
    end

    describe "with invalid params" do
      before do
        ContactMessage.any_instance.stubs(save: false)

        post :create, contact_message: attributes_for(:contact_message)
      end

      it { should redirect_to(root_path) }
      it { should respond_with(:redirect) }
      it { should set_the_flash[:error] }
    end

    it "does not send an email" do
      controller.should have_received(:deliver_notification_email).never
    end
  end

  describe "#deliver_notification_email" do
    include EmailSpec::Helpers
    include EmailSpec::Matchers

    it "sends an email" do
      message = stub('a message', deliver: true)
      ContactMailer.stubs(signup_confirmation: message)

      post :create, contact_message: attributes_for(:contact_message)

      ContactMailer.should have_received(:signup_confirmation)
      message.should have_received(:deliver)
    end
  end

end