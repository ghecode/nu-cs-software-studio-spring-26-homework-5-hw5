Feature: Filter todos by category

  Scenario: User filters todos by an existing category
    Given a todo exists with category "work"
    And a todo exists with category "personal"
    When I visit the todos page and filter by "work"
    Then I should see the "work" todo
    And I should not see the "personal" todo

  Scenario: Filtering by a category with no matches
    Given a todo exists with category "home chores"
    When I visit the todos page and filter by "study"
    Then I should see no todos