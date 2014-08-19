Feature: root page

  Guest sees nice main page
  While authenticated user redirects to its dashboard

  Scenario: Guest opens root page
    Given I am a guest
    When I open root page
    Then I see short description and nice screenshot

  Scenario: Authenticated user opens root page
    Given I am logged in
    When I open root page
    Then Application redirects me to my dashboard
