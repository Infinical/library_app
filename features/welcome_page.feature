Feature: List books on the welcome page
   As a visitor,
   when i visit the applications welcome page
   I would like to see a list of books

   Scenario: Viewing list of books on application's welcome page
    When I am on the welcome page
    Then I should see "React"
    And I should see "Ruby"
    And I should see "Javascript"
    And I should see "Rails"
    And I should see "HTML"