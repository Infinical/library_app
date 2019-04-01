Feature: Create an author
    As a library
    So that i can have authors
    I would like to register authors

    Scenario: Create a new author with valid details
    When I am on New Author Page
    Then I expect to see "New Author"
    And I fill 'First_name' with 'John'
    And I fill 'Last_name' with 'Calvin'
    And I click on 'Create Author'
    Then I should see 'Registration successful!'