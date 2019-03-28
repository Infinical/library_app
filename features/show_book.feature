Feature: Show a book after its created
    As an author 
    So that I can see a book
    I would like to show the book

    Scenario: Show a newly created book
    When I am on the Show Book Page
    Then I should see 'Title: React'
    And I should see 'Isbn: 1234567'
    And I should see 'Year: 2017'