@todo_ui
Feature: Test TODO site

  Background: go to TODO site
    Given go to TODO react site

  Scenario: Create TODO list and verify count
    When create 5 todo items
    Then total entries should equal 5