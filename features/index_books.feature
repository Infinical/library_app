Feature: List of all books created
    As a user
    So that i know all books i've created
    I should see a list of all books

    Background: 
    Given the following book exists
    |   title           |        isbn               |   year    |
    |   React           |        12345678           |   2017    |
    |   Ruby            |        45637382           |   2018    |
    |   Javascript      |        76859040           |   1998    |

    Scenario: See a list of all books created
    When I am on List of Books
    Then I should see 'React'
    And I should see 'Ruby'
    And I should see 'Javascript'