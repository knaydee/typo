Feature: Manage Articles
  In order to organize articles
  As an admin
  I want to add a new category

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Create category page is shown
    Given I am on the admin page
    When I follow "Categories"
    Then I should be on the add/edit category page
