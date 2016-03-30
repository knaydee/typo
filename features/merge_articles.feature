Feature: Merge articles
  As a blog administrator
  In order to improve UX
  I want to be able to merge articles with other similar articles

  Background:
    Given the blog is set up

  Scenario: Merge articles form is not shown on new article view
    Given I am on the admin page
    And I am logged into the admin panel
    When I follow "New Article"
    Then I should not see "Merge Articles"

  Scenario: Merge articles field is not shown for non admins
    Given I am on the admin content page
    And I am logged into the admin panel as a non admin
    When I follow "Edit"
    Then I should be on the admin content page
    And I should see "Error, you are not allowed to perform this action"

  Scenario: Merge articles field is shown for admins
    Given I am on the admin content page
    And I am logged into the admin panel
    When I follow "Edit"
    Then I should see "Merge Articles"
