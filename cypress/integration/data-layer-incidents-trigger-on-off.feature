Feature: Incident Trigger ON/OFF
  User can toggle any data layers on or off

  Scenario: Incident Trigger ON/OFF
    Given I'm in the "Home" page
    And I'm not signed in
    When I click on the data layer icon
    And I click the "Live incidents" option on the list
    # And the "Incidents" option is set to "Off"
    # Then the "INCIDENTS_LIVE_INCIDENT" trigger is shown as "Off" on the layers-menu

  Scenario: Accident Trigger ON/OFF
    Given I'm in the "Home" page
    And I'm not signed in
    When I click on the data layer icon
    And I click the "Live incidents" option on the list
    # Then the "Accident" option is set to "Off"
    # And the "INCIDENTS_LIVE_ACCIDENT" trigger is shown as "Off" on the layers-menu

  Scenario: Traffic congestion Trigger ON/OFF
    Given I'm in the "Home" page
    And I'm not signed in
    When I click on the data layer icon
    And I click the "Live incidents" option on the list
    # And the "Traffic congestion" option is set to "Off"
    # And the "INCIDENTS_LIVE_TRAFFIC_CONGESTION" trigger is shown as "Off" on the layers-menu
