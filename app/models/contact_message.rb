class ContactMessage < ActiveRecord::Base

  attr_accessible :email_address, :message, :name

  validates_presence_of :email_address, :name

end