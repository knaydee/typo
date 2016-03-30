Feature: Merge articles
  As a blog administrator
  In order to improve UX
  I want to be able to merge articles with other similar articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Merge articles field is not shown for non admins
    Given I am on the admin content page
    And I am not an admin
    When I follow "Edit"
    Then I should not see "Error, you are not allowed to perform this action"

  Scenario: Merge articles field is shown for admins
    Given I am on the admin content page
    And I am an admin
    When I follow "Edit"
    Then I should see "merge_with"
