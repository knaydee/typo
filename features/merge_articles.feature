Feature: Merge articles
  As a blog administrator
  In order to improve UX
  I want to be able to merge my article with another similar article

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And I am not an admin 

  Scenario: Merge articles field is shown
    Given I am on the article view page
    When I follow "New Article"
