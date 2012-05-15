Feature: List kitchens of a particular type
  Customers need to see some kitchens!

  Background:
    Given the following kitchens
      | name     | type      | 
      | Salzburg | Stormer   | 
      | Paris    | Stormer   | 
      | London   | Hand Made | 
      | Berlin   | Stormer   | 
      | Dublin   | Hand Made | 

  @ignore
  Scenario: Go to kitchens -> Stormer Kitchens
    When I click on the "Stormer Kitchens" link in the navbar
    Then I should see these kitchens
      | name     | type      | 
      | Salzburg | Stormer   | 
      | Paris    | Stormer   | 
      | Berlin   | Stormer   | 
    And not these kitchens
      | name     | type      | 
      | London   | Hand Made | 
      | Dublin   | Hand Made | 

  @ignore
  Scenario: Go to kitchens -> Hand Made Kitchens
    When I click on the "Hand Made Kitchens" link in the navbar
    Then I should see these kitchens
      | name     | type      | 
      | London   | Hand Made | 
      | Dublin   | Hand Made | 
    And not these kitchens
      | name     | type      | 
      | Salzburg | Stormer   | 
      | Paris    | Stormer   | 
      | Berlin   | Stormer   | 
