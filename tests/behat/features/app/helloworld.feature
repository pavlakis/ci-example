Feature: Hello World

  In order to get started with acceptance tests
  As a developer
  I need to be able to write actual behaviour tests


  Scenario: I can load the page
    Given I am on "/"
    Then I should see "Hello, World!"
    And the response status code should be 200

