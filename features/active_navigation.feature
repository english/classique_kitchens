Feature: Active Menu Item

  In order to know which page I am on
  As a user visitor of the website
  I want to a signal of which page is active

  Background:
    Given I am on the "Home" page

  Scenario Outline: Browse site
    When I visit the <Page> page
    Then the menu item <Menu Item> should be active

    Examples:
      | Page                | Menu Item           | 
      | Home                | Home                | 
      | Contact             | Contact             | 
      | störmer küchen      | störmer küchen      | 
      | Hand Made Furniture | Hand Made Furniture | 
