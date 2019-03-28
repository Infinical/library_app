Feature: Show a book after its created
    As an author 
    So that I can see a book
    I would like to show the book

    Background: 
    Given the following book exists
    |   title           |        isbn               |   year    |
    |   React           |        12345678           |   2017    |

    Scenario: Show a newly created book
    When I am on the Show Book Page
    Then I should see 'React' 
    And I should see '1234567'
    Then I should see '2017'