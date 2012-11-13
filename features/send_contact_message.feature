@javascript
Feature: Send a Contact Message
  In order to allow users to contact Five Tool Development
  As a website visitor
  I want to be able to send a contact message to the company

  Scenario: Send a contact message
    Given a filled out contact us form on the home page
    When I click "Send Message"
    Then a contact message record should be created
    And I should see an alert with the text "Thanks for contacting us. We will be in touch shortly."