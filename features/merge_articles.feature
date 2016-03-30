Feature: Merge articles
  As a blog administrator
  In order to improve UX
  I want to be able to merge articles with other similar articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Merge articles field is shown for admins only
    Given I am on the admin page
    And I am not an admin
    When I follow "New Article"
    Then I should not see "merge_with"
