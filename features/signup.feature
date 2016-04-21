Feature: Sign up
  As a new user
  I want sign up with new email and new password
  So that I can sign up
  
  Scenario: Sucessful sign up
    When i go to home page
    When I click_link Sign up now!
    Then I go to user page