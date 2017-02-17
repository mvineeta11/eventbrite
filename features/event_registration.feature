Feature: Event registration

  Scenario: User registers and purchases tickets for an event after authentication
    Given I am on homepage
    And  I successfully log in with valid credentials
    And  I choose to browse events
    When I select the event I want to go to
    And  I purchase some tickets that are free
    Then I successfully register


