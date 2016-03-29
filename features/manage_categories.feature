Feature: Manage Categories
  In order to better organize articles
  As an admin
  I want to add or edit a category

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Category page is shown
    Given I am on the admin page
    When I follow "Categories"
    Then I should be on the category page

  Scenario: Create and edit category
    Given I am on the category page
    When I fill in "category_name" with "mishmash"
    And I press "Save"
    Then I should see "Category was successfully saved."
    And I should see "mishmash"
    And I should have 1 new category
    When I follow "mishmash"
    Then I should see "mishmash"
