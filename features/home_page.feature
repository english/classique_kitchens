Feature: Home Page

  In order to give users an idea of what the business is about
  As a potential customer
  I want to see the important things about the business

  Scenario: New customer visiting the home page sees company info in header

    When I go to the home page
    Then I should see the company name and tagline in the header
    And I should see the company phone number:
    """
    01228 12345
    """
    And I should see the following blurb about the company:
    """
    Classique Kitchens offer infinite scope for kitchen design and layout
    """
