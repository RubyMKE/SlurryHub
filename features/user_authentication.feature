Feature: Basic user authentication.
  
  Scenario: Create an account
    Given a site visitor
    When the visitor chooses to create an account
    Then the visitor should be walked through account creation
    When the visitor enters valid information
    Then a new user account should be created for the visitor
    When the visitor enters invalid information
    Then a new user account should not be created for the visitor

  Scenario: Log in
    Given a user
    When they sign in with an email address
    Then they should be authenticated

  Scenario: Log in failure
    Given a visitor without an account
    When they try to sign in
    Then they should not be authenticated
    And they should be redirected to create an account