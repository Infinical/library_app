Feature: Edit a book
    As an author
    So that i can change details of a book
    I can edit the book

    Background: 
    Given the following book exists
    |   title           |        isbn               |   year    |
    |   React           |        12345678           |   2017    |

    Scenario: Edit a created book
    When I am on the Edit Book Page
    Then I expect to see 'Edit Book Form'
    And I change 'Title' from 'React' to 'Redux'
    And I change 'Isbn' from '12345678' to '4567993'
    And I change 'Year' from '2017' to '2018'
    And I click on 'Update Book'
    Then I should see 'Book was edited successfully!'
    Then there should be no book with 'Isbn' '12345678'

    Scenario: Edit a created book with invalid details
        When I am on the Edit Book Page
        Then I expect to see "Edit Book Form"
        And I fill 'Title' with ''
        And I fill 'Isbn' with '4563728'
        And I fill 'Year' with '2016'
        And I click on 'Update Book'
        Then I should see 'There were errors while updating your book!'