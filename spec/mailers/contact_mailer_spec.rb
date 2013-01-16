require 'spec_helper'

describe ContactMailer, :mailer do
  describe "#signup_confirmation" do
    before(:each) do
      @contact_message = build(:contact_message,
        name: "Barack Obama",
        email_address: "barry@whitehouse.gov"
      )

      @mail = ContactMailer.signup_confirmation(@contact_message)
    end

    it "assigns the contact_message's email address as the to: address" do
      @mail.to_addrs.should eq(['barry@whitehouse.gov'])
    end

    it "assigns the 'geoff@fivetool.io' as the bcc: address" do
      @mail.bcc_addrs.should eq(['geoff@fivetool.io'])
    end

    it "assigns 'Thanks for your message' as the subject" do
      @mail.should have_subject('Thanks for your message')
    end

    it "includes the contact's name in the message body" do
      @mail.should have_body_text(/Barack Obama,/)
    end
  end
end