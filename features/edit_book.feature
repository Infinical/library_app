Feature: Edit a book
    As an author
    So that i cna change details of a book
    I can edit the book

    Scenario: Edit a created book
    When I am on the Edit Book Page
    Then I expect to see 'Edit Book Form'
    And I expect to change 'Title' from 'React' to 'Redux'
    And I expect to change 'Isbn' from '12345678' to '4567993'
    And I expect to change 'Year' from '2017' to '2018'
    And I click on 'Edit Book'
    Then I should see 'Book was edited successfully'
