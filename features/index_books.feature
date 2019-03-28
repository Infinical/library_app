Feature: List of all books created
    As a user
    So that i know all books i've created
    I should see a list of all books

    Scenario: See a list of all books created
    When I am on All Books Page
    Then I should see 'React'
    And I should see 'Ruby'
    And I should see 'Javascript'