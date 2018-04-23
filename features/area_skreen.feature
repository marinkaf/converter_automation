@area
Feature: User is able convert area units

  Background:
    Given I click on Got in button
#
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
     |1     |1.000.000|
     |2     |2.000.000|
     |3     |3.000.000|

  Scenario Outline: User is able to use soft keyboardti enter values.
#           Пользователь вводит значения с использованием клавиатуры
    Given I click on Clear button
    When I click on From field
#        Я кликаю по полю ОТ
    And I press "<target>" on soft keybord
#       Я нажимаю "3" на клавиатуре
    Then I get "<result>" in To field
#        Я получаю "30000" в поле Результат

    Examples:
      |target|result|
      |147     |147.000.000|
      |258     |258.000.000|
      |369     |369.000.000|


  Scenario:
    When I select "Кв. сантиметр" from left column
    Then I see "Кв. сантиметр" in From header
    And I get "0,0001" in To field


 Scenario: Я кликаю по кнопке
   When Я кликаю по кнопке

  Scenario: User is able to call menu by swiping
    When I swipe in the menu
    Then I see app menu

