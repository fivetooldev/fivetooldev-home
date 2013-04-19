##
# A message submitted by a site user to Five Tool Development.
##
class ContactMessage < ActiveRecord::Base

  attr_accessible :email_address, :message, :name

  validates_presence_of :email_address, :name

end