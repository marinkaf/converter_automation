@area
Feature: User is able convert area units

  Background:
    Given I click on Got in button

#  Scenario: User is able to dismiss help
#    Given I land on help popup
#    When I click on Got in button
#    Then I land on Area screen

  Scenario: User is able to swap value
#    Given I click on Got in button
    Given I see "Sq Kilometre" in From header
    And I see "Sq Metre" in to header
    When I click on Swap button
    Then I see "Sq Metre" in From header
    And I see "Sq Kilometre" in to header

  Scenario Outline: User is able to convert default units
#    Given I click on Got in button
    Given I click on Clear button
    When I enter "<target>" to From field
    Then I get "<result>" in To field

    Examples:
     |target|result|
     |1     |1000000|
     |2     |2000000|
     |3     |3000000|

  Scenario: User is able to use soft keyboardti enter values.
#           Пользователь вводит значения с использованием клавиатуры
    Given I click on Clear button
    When I click on From field
#        Я кликаю по полю ОТ
    And I press "30" on soft keybord
#       Я нажимаю "3" на клавиатуре
    Then I get "30.000.000" in To field
#        Я получаю "30000" в поле Результат
  @wip
  Scenario:
    When I select "Кв. сантиметр" from left column
    Then I see "Кв. сантиметр" in From header
    And I get "0,0001" in To field

    