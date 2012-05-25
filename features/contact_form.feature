Feature: Contact Form
  In order to tell us something
  users
  want to contact us online without having to leave their browser
 
  Scenario: Submitting with valid details
    Given I am on the contact page
    When I fill in "Name" with "Jamie English"
    When I fill in "Company" with "Jamie English inc"
    When I fill in "Email" with "someone@example.com"
    And I fill in "Message" with "Hello"
    And I press "Send message"
    Then I should see a success message
