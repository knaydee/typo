Feature: Manage Categories
  In order to better organize articles
  As an admin
  I want to add a new category

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Create category page is shown
    Given I am on the admin page
    When I follow "Categories"
    Then I should be on the new category page

  Scenario: Create valid category
    Given I am on the new category page
    When I fill in "category_name" with "mishmash"
    And I press "Save"
    Then I should see "Category was successfully saved."
    And I should see "mishmash"
    And I should have 1 new category
