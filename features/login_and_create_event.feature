Feature: login and create event
  Scenario: As an organizer, I would like to create an event
     Given I successfully log in with valid credentials
     And I create an event
    And I select event type
    When I submit details for creating an event
    Then I make event live
