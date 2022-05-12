Feature: Search by keyword

  @TestCaseKey=QA-12
  Scenario: Searching for a term
    Given I am researching things on the internet
    When I looks up "Cucumber"
    Then I should see information about "Cucumber"

  @TestCaseKey=QA-13
  Scenario: (Fail) Searching for a term
    Given I am researching things on the internet
    When I looks up "Cucumber"
    Then I should see information about "Serenity"

