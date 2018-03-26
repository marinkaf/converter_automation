@area
Feature: User is able convert area units
  @menu
  Scenario: User is able to dismiss help
    Given I hand on help popup
    When I click on Got in button
    Then I land on Area screen
@wit
  Scenario: User is able to swap value
    Given I click on Got in button
    And I see "Sq Kilometre" in From header
    And I see "Sq Metre" in to header
    When I click on Swap button
    Then I see "Sq Metre" in From header
    And I see "Sq Kilometre" in to header

  Scenario Outline: User is able to convert default units
    Given I click on Got in button
    And I click on Clear button
    When I enter "1" to From field
    Then I get "1000000" in To field

    Examples:
     |target|result|
     |1     |1000000|
     |2     |2000000|
     |3     |3000000|
