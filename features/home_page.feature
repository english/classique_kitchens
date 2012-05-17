Feature: Home Page

  In order to give users an idea of what the business is about
  As a potential customer
  I want to see the important things about the business

  Scenario: New customer visiting the home page sees company info in header

    When I go to the home page
    Then I should see the company name and tagline in the header
    And I should see the company phone number in the header:
    """
    01228 525676
    """
    And I should see the company address in the header:
    """
    Unit 2, Port Road Workshops, Carlisle, Cumbria, CA2 7AJ
    """
    And I should see the following blurb about the company:
    """
    Kitchens from Classique Kitchens are a reflection of
    """
