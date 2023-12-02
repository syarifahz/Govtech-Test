@login-scenarios
Feature: Saucedemo Login

  @test-case-1 @positive-case
  Scenario: User can successfully login to saucedemo
    Given user see login page
    When user input username "standard_user"
    And user input password "secret_sauce"
    And user click login button
    Then user see homepage

  @test-case-2 @negative-case
  Scenario: User not input username and can't login
    Given user see login page
    When user input password "secret_sauce"
    And user click login button
    Then user see error message "Username is required"

  @test-case-3 @negative-case
  Scenario: User not input password and can't login
    Given user see login page
    When user input username "standard_user"
    And user click login button
    Then user see error message "Password is required"

  @test-case-4 @negative-case
  Scenario: User input incorrect password or username and can't login
    Given user see login page
    When user input username "standard_userrr"
    When user input password "abcde"
    And user click login button
    Then user see error message "Username and password do not match any user in this service"
