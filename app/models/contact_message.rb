##
# A message submitted by a site user to Five Tool Development.
##
class ContactMessage < ActiveRecord::Base

  attr_accessor :email_address

  validates :email_address, inclusion: [nil, '']
  validates :location, presence: true, email: true
  validates :name, presence: true

end