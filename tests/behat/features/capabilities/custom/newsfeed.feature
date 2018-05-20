@api
Feature: Viewing post contents in the newsfeed
  Benefit: In order to view useful information
  Role: As an anonymous
  Goal/desire: I want to view contents in the newsfeed

  Scenario: Checking article post in homepage
    Given I am an anonymous user
    And I am on the homepage
    And I should see element ".card .field--name-field-post" in the page

  Scenario: Checking pattern post in homepage
    Given I am an anonymous user
    And I am on the homepage
    And I should see element ".card .field--name-field-pattern" in the page
