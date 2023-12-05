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

  @test-case-5 @negative-case
  Scenario: User login with locked out user account
    Given user see login page
    When user input username "locked_out_user"
    When user input password "secret_sauce"
    And user click login button
    Then user see error message "Sorry, this user has been locked out."

  @test-case-6 @negative-case
  Scenario: User login with problem user and can't remove the cart
    Given user see login page
    When user input username "problem_user"
    When user input password "secret_sauce"
    And user click login button
    Then user see homepage
    When user successfully add sauce lab backpack to cart
    And user click on remove button on sauce lab backpack item
    Then user see cart not remove

  @test-case-7 @negative-case
  Scenario: User login with performance glitch user account and delay to login
    Given user see login page
    When user input username "performance_glitch_user"
    When user input password "secret_sauce"
    And user click login button
    Then user see homepage with delayed

  @test-case-8 @negative-case
  Scenario: User login to saucedemo and see visual failure
    Given user see login page
    When user input username "visual_user"
    When user input password "secret_sauce"
    And user click login button
    Then user see homepage visual is failure

  @test-case-9 @negative-case
  Scenario: User login with error user and can't remove the cart
    Given user see login page
    When user input username "error_user"
    When user input password "secret_sauce"
    And user click login button
    Then user see homepage
    When user successfully add sauce lab backpack to cart
    And user click on remove button on sauce lab backpack item
    Then user see cart not remove
