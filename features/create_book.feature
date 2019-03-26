Feature: Create a new book
    As an author
    So that I can make a book available
    I would like to create a new book

    Scenario: Create a new book that has valid details 
        When I am on the New Book Page
        Then I expect to see "New Book Form"
        And I fill 'Title' with 'React'
        And I fill 'Isbn' with '12345678'
        And I fill 'Year' with '2017'
        And I click on 'Create Book'
        Then I should see "Book successfully created!"

    Scenario: Create a new book with invalid details
        When I am on the New Book Page
        Then I expect to see "New Book Form"
        And I fill 'Title' with ''
        And I fill 'Isbn' with '4563728'
        And I fill 'Year' with '2016'
        And I click on 'Create Book'
        Then I should see "There were problems while creating the book"
