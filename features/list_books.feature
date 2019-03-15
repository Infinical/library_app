Feature: List books on the welcome page

   As a visitor,
   when i visit the applications welcome page
   I would luke to see a list of books

   Scenario: Viewing list of books on application's welcome page
    When I am on the welcome page
    Then I should see "React"
    And I should see "12345678"
    And I should see "Longhorn"
    And I should see "2017"