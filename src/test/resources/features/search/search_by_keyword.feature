Feature: Search by keyword

  Scenario: Searching for a term
    Given I am researching things on the internet
    When I looks up "Cucumber"
    Then I should see information about "Cucumber"

  #Scenario: (Fail) Searching for a term
   # Given I am researching things on the internet
    #When I looks up "Cucumber"
    #Then I should see information about "Serenity"

