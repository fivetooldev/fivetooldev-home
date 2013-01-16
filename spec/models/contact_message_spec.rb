require 'spec_helper'

describe ContactMessage, :contact_message, :model do
  it { should validate_presence_of(:email_address) }
  it { should validate_presence_of(:name) }
end