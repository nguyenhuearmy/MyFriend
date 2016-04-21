Feature: Sign In
  As an user
  I want to sign in with my email, password
  So that I can sign in
  
  Scenario: Sucessful sign in
    Given a valid user
    When I go to the login page
    And I fill in the following:
      |Email|minikermit@gmail.com|
      |Password|12345678|
    And I press "Log in"