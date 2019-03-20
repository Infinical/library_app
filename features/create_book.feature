Feature: Create a new book
    As an author
    When I want to create a new book
    I would like to fill a create_new_book form

    Scenario: Creating a new book 
    When I am on the Create New Book Page
    Then I expect to see "Create New Book Form"
    And I fill "Book Title" with "React"
    And I fill "Book ISBN" with "12345678"
    And I fill "Year Published" with "2017"
    And I click on "Create New Book"
    Then I should see "Book Successfully Created!"
