require 'spec_helper'

describe ContactMessage, :contact_message, :model do

  it { should validate_presence_of(:location) }
  it { should validate_presence_of(:name) }
  it { should ensure_inclusion_of(:email_address).in_array([nil, '']) }

end