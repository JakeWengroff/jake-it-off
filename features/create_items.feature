Feature: Create items
  In order to make a To-Do List
  As a user
  I want to add items

  Scenario: Items List
    Given I am logged in as a user
    When I fill in the form with a new Item
    Then I see a new Item
