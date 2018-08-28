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

  Scenario: Checking footer element in homepage
    Given I am an anonymous user
    And I am on the homepage
    And I should see element ".col-md-3" in the page
    And I should see element ".col-2" in the page
    And I should see element ".col-md-3.col-2" in the page

  Scenario: Checking infinite scroll feature
    Given I am an anonymous user
    And I am on the homepage  
    And I should see element ".js-pager__items" in the page

  Scenario: Validate no stream logo and content is displayed
    Given I am an anonymous user
    And I am on the homepage
    And I should not see a ".block-block-content8bb9d4bb-f182-4afc-b138-8a4b802824e4" element

  Scenario: Checking signup and login forms
    Given I am an anonymous user
    And I am on the homepage  
    And I should see element ".field--name-field-signup" in the page
    And I should see element ".openid-connect-login-form" in the page

  Scenario: Article poster details is displayed
    Given I am an anonymous user
    And I am on the homepage
    Then I should see "Fortune"
    And I should see element ".avatar" in the page