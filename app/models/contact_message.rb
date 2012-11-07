class ContactMessage < ActiveRecord::Base
  attr_accessible :email_address, :message, :name
end
