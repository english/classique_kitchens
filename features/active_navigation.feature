Feature: Active Menu Item

  In order to know which page I am on
  As a user visitor of the website
  I want to a signal of which page is active

  Background:
    Given I am on the "Home" page

  Scenario: Browse site
    When I visit the "Home" page
    Then the menu item "Home" should be active

