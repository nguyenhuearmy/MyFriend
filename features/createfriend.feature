Feature: Creating friend
  As a user
  I want to create my friend
  So that I can create friend
  
  Scenario: Sucessful create friend
    When I go to friend page
    When I click_link New Friend
    When I go to form create friend
    When I fill in the following:
      |Name|minh thong|
      |Birthday|1/1/1999|
      |Email|minhthong@gmail.com|
      |Phone|12345|
      |Feeling|hanh phuc|
    Then I click_button Create Friend