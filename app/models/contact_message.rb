##
# A message submitted by a site user to Five Tool Development.
##
class ContactMessage < ActiveRecord::Base

  attr_accessible :email_address, :message, :name

  validates :email_address, presence: true, email: true
  validates_presence_of :name

end