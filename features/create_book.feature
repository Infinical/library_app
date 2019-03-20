Feature: Create a new book
    As an author
    So that I can make a book available
    I would like to create a new book

    Scenario: Create a new book that has valid details 
        When I am on the Create New Book Page
        Then I expect to see "Create New Book Form"
        And I fill "Book Title" with "React"
        And I fill "Book ISBN" with "12345678"
        And I fill "Year Published" with "2017"
        And I click on "Create New Book"
        Then I should see "Book Successfully Created!"
