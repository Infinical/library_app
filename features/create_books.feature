Feature: Create a new book
    As a librarian
    when i create a new book
    I would like to see Successfully created message

    Scenario: Creating a new book
        When I am on the New  Book page
        Then I fill Book name with "React"
        And I fill   Book isbn with "123456"
        And I fill Book year with "2017"
        And I click on "Save Book"
        And I should see "Successfully created"

    Scenario: Creating a new book
        When I am on the New  Book page
        Then I fill Book name with "React"
        And I fill   Book isbn with "123456"
        And I fill Book year with "2017"
        And I click on "Save Book"
        And I should see "Book not created"