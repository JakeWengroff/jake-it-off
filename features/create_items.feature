Feature: Create items
  In order to make a To-Do List
  As a user
  I want to add items

  Scenario: Items List
    Given I am logged in as a user
    Then I should have Items in my To Do List
    And I fill in the form with a new Item
    Then I see a new Item
