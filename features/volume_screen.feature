
Feature: User is able convert area units

  Background:
    Given I click on Got in button
    # And I land on Area screen

  Scenario: User is able to call menu by swiping
    When I swipe in the menu
    Then I see app menu


    Scenario Outline:
      When I swipe in the menu
      And I select "<target>" from menu
      Then I land on "<result>" screen

    Examples:
      |target|result|
      # |Кулинария|Кулинария|
      # |Площадь|Площадь|
      |Объём  |Объём|
@wip
    Scenario: swipe menu
      When I swipe in the menu
      # And I swipe menu
      # Then I see "Объём"
