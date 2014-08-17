Feature: Tom menu
  On any page of the website user should see the top menu

  Scenario: Guest user
    Given I am a guest
    When I go to home page
    Then I should see top menu
