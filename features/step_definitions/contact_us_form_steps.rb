Given /^a contact us form on the home page filled out by a human$/ do
  visit '/'
  fill_in "contact_message_name", with: "Susan Keppelman"
  fill_in "contact_message_location", with: "susan@fivetool.io"
  fill_in "contact_message_message",
    with: "Five Tool Development is the firm for me."
end

When /^I click "(.*?)"$/ do |element|
  click_on element
end

Then /^a contact message record should be created$/ do
  ContactMessage.count.should eq(1)
  ContactMessage.first.name.should eq("Susan Keppelman")
  ContactMessage.first.location.should eq("susan@fivetool.io")
  ContactMessage.first.message
    .should eq("Five Tool Development is the firm for me.")
end

Then /^I should see an alert with the text "(.*?)"$/ do |arg1|
  page.has_selector?(
    '.banner',
    text: "Thanks for contacting us. We will be in touch shortly."
  ).should be_true
end
