# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact_message do
    name 'Barack Obama'
    email_address ''
    location 'barackobama@whitehouse.gov'
    message 'We are interested in a new website from Five Tool Development.'
  end
end
