@api_tests
Feature: API test for /post

  Scenario: Check /posts endpoint
    Given connect to API
    When call GET method for /posts
    Then should receive response with 100 items