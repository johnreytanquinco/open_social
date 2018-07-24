@api
Feature: Viewing group page components
  Benefit: In order to view and check page's contents and accessibility
  Role: As an anonymous
  Goal/desire: I want to view group page information

  Scenario: Checking that group page is broken
    Given I am an anonymous user
    #And I am on the homepage
    When I am on "/b/1/trabaho-xyz"
    Then I should see "The website encountered an unexpected error. Please try again later."
    And I should not see a ".view-group-business-information" element

  Scenario: Checking that group page is accessible
    Given I am an anonymous user
    When I am on "/b/1/trabaho-xyz"
    Then I should see "Trabaho XYZ"
    And I should see element ".view-group-business-information" in the page