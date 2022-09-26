Feature: Data Layer Default Trigger All

  User can toggle any data layers on or off

Background: Open Data Layer
Given I'm in the "Home" page
And I'm not signed in
When I click on the data layer icon

Scenario: Default Toogle For  COVID -19 SAFESTART RESTRICTIONS
  And I click the "Covid-19 SafeStart restrictions" option on the list
  And the "health covid" icon is "displayed" on the layers-menu
  Then the "Covid-19 protected route" option is "displayed" on the data layers-menu
  And the "covid protected" icon is "displayed" on the layers-menu
  And the "Covid-19 protected route" trigger is "displayed" on the layers-menu
  And the "Covid-19 road change" option is "displayed" on the data layers-menu
  And the "covid road change" icon is "displayed" on the layers-menu
  And the "Covid-19 road change" trigger is "displayed" on the layers-menu
  And the "Covid-19 school street" option is "displayed" on the data layers-menu
  And the "covid school street" icon is "displayed" on the layers-menu
  And the "Covid-19 school street" trigger is "displayed" on the layers-menu
  And the "Covid-19 testing station" option is "displayed" on the data layers-menu
  And the "covid testing station" icon is "displayed" on the layers-menu
  And the "Covid-19 testing station" trigger is "displayed" on the layers-menu
  And the "Covid-19 vaccination centre" option is "displayed" on the data layers-menu
  And the "vaccination centre" icon is "displayed" on the layers-menu
  And the "Covid-19 vaccination centre" trigger is "displayed" on the layers-menu


Scenario: Default Toogle For LIVE INCIDENT
    And the "live incident" icon is "displayed" on the layers-menu
    And I click the "Live incidents" option on the list
    Then the "Incident" option is "displayed" on the data layers-menu
    And the "incident" icon is "displayed" on the layers-menu
    And the "Incident" trigger is "displayed" on the layers-menu
    And the "Accident" option is "displayed" on the data layers-menu
    And the "accident" icon is "displayed" on the layers-menu
    And the "Accident" trigger is "displayed" on the layers-menu
    And the "Traffic congestion" option is "displayed" on the data layers-menu
    And the "congestion" icon is "displayed" on the layers-menu
    And the "Traffic congestion" trigger is "displayed" on the layers-menu
    And the "Health emergency" option is "displayed" on the data layers-menu
    And the "health emergency" icon is "displayed" on the layers-menu
    And the "Health emergency" trigger is "displayed" on the layers-menu
    And the "Road closure" option is "displayed" on the data layers-menu
    And the "road closure incident" icon is "displayed" on the layers-menu
    And the "Road closure" trigger is "displayed" on the layers-menu
    And the "Lane closure" option is "displayed" on the data layers-menu
    And the "lane closure incident" icon is "displayed" on the layers-menu
    And the "Lane closure" trigger is "displayed" on the layers-menu
    And the "Closed to HGVs" option is "displayed" on the data layers-menu
    And the "closed hgv" icon is "displayed" on the layers-menu
    And the "Closed to HGVs" trigger is "displayed" on the layers-menu
    And the "Infrastructure issue" option is "displayed" on the data layers-menu
    And the "infrastructure" icon is "displayed" on the layers-menu
    And the "Infrastructure issue" trigger is "displayed" on the layers-menu


Scenario: Default Toogle For Life Traffic
    And I click the "Live traffic" option on the list
    Then the Live traffic is displayed


Scenario: Default Toogle For Road closures and diversions
    And I click the "Road closures and diversions" option on the list
    And the "road closure and diversion" icon is "displayed" on the layers-menu
    Then the "Road closure" option is "displayed" on the data layers-menu
    And the "road closure" icon is "displayed" on the layers-menu
    And the "Road closure" trigger is "displayed" on the layers-menu
    And the "Diversion route" option is "displayed" on the data layers-menu
    And the "diversion route" icon is "displayed" on the layers-menu
    And the "Diversion route" trigger is "displayed" on the layers-menu
    And the "HGV Diversion route" option is "displayed" on the data layers-menu
    And the "hgv diversion route" icon is "displayed" on the layers-menu
    And the "HGV Diversion route" trigger is "displayed" on the layers-menu
    And the "Temporary one-way" option is "displayed" on the data layers-menu
    And the "temporary oneway" icon is "displayed" on the layers-menu
    And the "Temporary one-way" trigger is "displayed" on the layers-menu
    And the "Bridge closure" option is "displayed" on the data layers-menu
    And the "bridge closure" icon is "displayed" on the layers-menu
    And the "Bridge closure" trigger is "displayed" on the layers-menu


Scenario: Default Toogle For Traffic restrictions
    Then I click the "Traffic restrictions" option on the list
    And the "traffic restrictions" icon is "displayed" on the layers-menu
    And the "Contraflow" option is "displayed" on the data layers-menu
    And the "contraflow" icon is "displayed" on the layers-menu
    And the "Lane closure" trigger is "displayed" on the layers-menu
    And the "Footway closure" option is "displayed" on the data layers-menu
    And the "footway closure" icon is "displayed" on the layers-menu
    And the "Contraflow" trigger is "displayed" on the layers-menu
    And the "Lane closure" option is "displayed" on the data layers-menu
    And the "lane closure" icon is "displayed" on the layers-menu
    And the "Footway closure" trigger is "displayed" on the layers-menu
    And the "Temporary speed limit" option is "displayed" on the data layers-menu
    And the "temporary speed limit" icon is "displayed" on the layers-menu
    And the "Temporary speed limit" trigger is "displayed" on the layers-menu
    And the "Weight restriction" option is "displayed" on the data layers-menu
    And the "weight restriction" icon is "displayed" on the layers-menu
    And the "Weight restriction" trigger is "displayed" on the layers-menu
    And the "Suspension of weight restriction" option is "displayed" on the data layers-menu
    And the "weight restriction suspension" icon is "displayed" on the layers-menu
    And the "Suspension of weight restriction" trigger is "displayed" on the layers-menu
    And the "Clearway / no stopping" option is "displayed" on the data layers-menu
    And the "clear way" icon is "displayed" on the layers-menu
    And the "Clearway / no stopping" trigger is "displayed" on the layers-menu
    And the "Tow away zone" option is "displayed" on the data layers-menu
    And the "tow away zone" icon is "displayed" on the layers-menu
    And the "Tow away zone" trigger is "displayed" on the layers-menu
    And the "Temporary parking restriction" option is "displayed" on the data layers-menu
    And the "temporary parking restriction" icon is "displayed" on the layers-menu
    And the "Temporary parking restriction" trigger is "displayed" on the layers-menu
    And the "Suspension of parking restriction" option is "displayed" on the data layers-menu
    And the "parking restriction suspension" icon is "displayed" on the layers-menu
    And the "Suspension of parking restriction" trigger is "displayed" on the layers-menu
    And the "Suspension of busway" option is "displayed" on the data layers-menu
    And the "bus way suspension" icon is "displayed" on the layers-menu
    And the "Suspension of busway" trigger is "displayed" on the layers-menu
    And the "Gritting in progress" option is "displayed" on the data layers-menu
    And the "gritting in progress" icon is "displayed" on the layers-menu
    And the "Gritting in progress" trigger is "displayed" on the layers-menu
    And the "Advisory / preferred access route" option is "displayed" on the data layers-menu
    And the "advisory preferred access route" icon is "displayed" on the layers-menu
    And the "Advisory / preferred access route" trigger is "displayed" on the layers-menu
    And the "Road closure crossing" option is "displayed" on the data layers-menu
    And the "road closure crossing" icon is "displayed" on the layers-menu
    And the "Road closure crossing" trigger is "displayed" on the layers-menu
    And the "Road ahead close" option is "displayed" on the data layers-menu
    And the "road ahead closed" icon is "displayed" on the layers-menu
    And the "Road ahead close" trigger is "displayed" on the layers-menu
    And the "No vehicle access" option is "displayed" on the data layers-menu
    And the "no vehicle access" icon is "displayed" on the layers-menu
    And the "No vehicle access" trigger is "displayed" on the layers-menu
    And the "No right turn" option is "displayed" on the data layers-menu
    And the "no right turn" icon is "displayed" on the layers-menu
    And the "No right turn" trigger is "displayed" on the layers-menu
    And the "No left turn" option is "displayed" on the data layers-menu
    And the "no left turn" icon is "displayed" on the layers-menu
    And the "No left turn" trigger is "displayed" on the layers-menu
    And the "No U-turn" option is "displayed" on the data layers-menu
    And the "no u-turn" icon is "displayed" on the layers-menu
    And the "No U-turn" trigger is "displayed" on the layers-menu
    And the "Emergency access route" option is "displayed" on the data layers-menu
    And the "emergency access route" icon is "displayed" on the layers-menu
    And the "Emergency access route" trigger is "displayed" on the layers-menu
    And the "Access only" option is "displayed" on the data layers-menu
    And the "access only" icon is "displayed" on the layers-menu
    And the "Access only" trigger is "displayed" on the layers-menu
    And the "Cycle lane" option is "displayed" on the data layers-menu
    And the "cycle lane" icon is "displayed" on the layers-menu
    And the "Cycle lane" trigger is "displayed" on the layers-menu
    And the "Pedestrian zone" option is "displayed" on the data layers-menu
    And the "pedestrian zone" icon is "displayed" on the layers-menu
    And the "Pedestrian zone" trigger is "displayed" on the layers-menu
    And the "Widened footpath" option is "displayed" on the data layers-menu
    And the "widened footpath" icon is "displayed" on the layers-menu
    And the "Widened footpath" trigger is "displayed" on the layers-menu
    And the "Suspension of one-way" option is "displayed" on the data layers-menu
    And the "one way suspension" icon is "displayed" on the layers-menu
    And the "Suspension of one-way" trigger is "displayed" on the layers-menu
    And the "Reversal of one-way" option is "displayed" on the data layers-menu
    And the "one way reversal" icon is "displayed" on the layers-menu
    And the "Reversal of one-way" trigger is "displayed" on the layers-menu
    And the "Two-way traffic signals" option is "displayed" on the data layers-menu
    And the "two way traffic signal" icon is "displayed" on the layers-menu
    And the "Multi-way traffic signals" option is "displayed" on the data layers-menu
    And the "multiway traffic signal" icon is "displayed" on the layers-menu
    And the "Multi-way traffic signals" trigger is "displayed" on the layers-menu
    And the "Stop and go" option is "displayed" on the data layers-menu
    And the "stop and go" icon is "displayed" on the layers-menu
    And the "Give and take" option is "displayed" on the data layers-menu
    And the "give and take" icon is "displayed" on the layers-menu
    And the "Give and take" trigger is "displayed" on the layers-menu
    And the "Priority signs" option is "displayed" on the data layers-menu
    And the "priority signs" icon is "displayed" on the layers-menu
    And the "Priority signs" trigger is "displayed" on the layers-menu
    And the "Convoy working" option is "displayed" on the data layers-menu
    And the "convoy working" icon is "displayed" on the layers-menu
    And the "Convoy working" trigger is "displayed" on the layers-menu
    And the "Works stop" option is "displayed" on the data layers-menu
    And the "works stop" icon is "displayed" on the layers-menu
    And the "Works stop" trigger is "displayed" on the layers-menu



Scenario: Default Toogle For Roadworks
    And I click the "Roadworks" option on the list
    And the "road works" icon is "displayed" on the layers-menu
    Then the "Roadworks" option is "displayed" on the new data layers-menu
    And the "Roadworks" new trigger is "displayed" on the layers-menu


Scenario: Default Toogle For Weather
    And I click the "Weather" option on the list
    And the "weather" icon is "displayed" on the layers-menu
    Then the "Flood" option is "displayed" on the data layers-menu
    And the "flood" icon is "displayed" on the layers-menu
    And the "Flood" trigger is "displayed" on the weather-menu but not active
    And the "Landslip" option is "displayed" on the data layers-menu
    And the "landslip" icon is "displayed" on the layers-menu
    And the "Landslip" trigger is "displayed" on the weather-menu but not active
    And the "Weather incident" option is "displayed" on the data layers-menu
    And the "weather incident" icon is "displayed" on the layers-menu
    And the "Weather incident" trigger is "displayed" on the weather-menu but not active

Scenario: Default Toogle For Public events
    And I click the "Public events" option on the list
    And the "public events" icon is "displayed" on the layers-menu
    Then the "Cycling" option is "displayed" on the data layers-menu
    And the "cycling" icon is "displayed" on the layers-menu
    And the "Cycling" trigger is "displayed" on the layers-menu
    And the "Football" option is "displayed" on the data layers-menu
    And the "football" icon is "displayed" on the layers-menu
    And the "Football" trigger is "displayed" on the layers-menu
    And the "Horse racing" option is "displayed" on the data layers-menu
    And the "horse racing" icon is "displayed" on the layers-menu
    And the "Horse racing" trigger is "displayed" on the layers-menu
    And the "Motor sport event" option is "displayed" on the data layers-menu
    And the "motor sport event" icon is "displayed" on the layers-menu
    And the "Motor sport event" trigger is "displayed" on the layers-menu
    And the "Rugby" option is "displayed" on the data layers-menu
    And the "rugby" icon is "displayed" on the layers-menu
    And the "Rugby" trigger is "displayed" on the layers-menu
    And the "Running" option is "displayed" on the data layers-menu
    And the "running" icon is "displayed" on the layers-menu
    And the "Running" trigger is "displayed" on the layers-menu
    And the "Sport event" option is "displayed" on the data layers-menu
    And the "sport event" icon is "displayed" on the layers-menu
    And the "Sport event" trigger is "displayed" on the layers-menu
    And the "Carnival / parade / street party" option is "displayed" on the data layers-menu
    And the "carnival" icon is "displayed" on the layers-menu
    And the "Carnival / parade / street party" trigger is "displayed" on the layers-menu
    And the "Polling station" option is "displayed" on the data layers-menu
    And the "polling station" icon is "displayed" on the layers-menu
    And the "Polling station" trigger is "displayed" on the layers-menu
    And the "Agricultural show" option is "displayed" on the data layers-menu
    And the "agricultural show" icon is "displayed" on the layers-menu
    And the "Agricultural show" trigger is "displayed" on the layers-menu
    And the "Air show" option is "displayed" on the data layers-menu
    And the "air show" icon is "displayed" on the layers-menu
    And the "Air show" trigger is "displayed" on the layers-menu
    And the "Remembrance parade" option is "displayed" on the data layers-menu
    And the "rememberance parade" icon is "displayed" on the layers-menu
    And the "Remembrance parade" trigger is "displayed" on the layers-menu
    And the "Christmas event" option is "displayed" on the data layers-menu
    And the "chrismas event" icon is "displayed" on the layers-menu
    And the "Christmas event" trigger is "displayed" on the layers-menu
    And the "Entertainment event" option is "displayed" on the data layers-menu
    And the "entertainment event" icon is "displayed" on the layers-menu
    And the "Entertainment event" trigger is "displayed" on the layers-menu
    And the "Festival" option is "displayed" on the data layers-menu
    And the "festival" icon is "displayed" on the layers-menu
    And the "Festival" trigger is "displayed" on the layers-menu
    And the "Filming" option is "displayed" on the data layers-menu
    And the "filming" icon is "displayed" on the layers-menu
    And the "Filming" trigger is "displayed" on the layers-menu
    And the "Market" option is "displayed" on the data layers-menu
    And the "market" icon is "displayed" on the layers-menu
    And the "Market" trigger is "displayed" on the layers-menu
    And the "Cruise ship" option is "displayed" on the data layers-menu
    And the "cruise ship" icon is "displayed" on the layers-menu
    And the "Cruise ship" trigger is "displayed" on the layers-menu
    And the "Funeral" option is "displayed" on the data layers-menu
    And the "funeral" icon is "displayed" on the layers-menu
    And the "Funeral" trigger is "displayed" on the layers-menu
    And the "Other" option is "displayed" on the data layers-menu
    And the "other" icon is "displayed" on the layers-menu
    And the "Other" trigger is "displayed" on the layers-menu

Scenario: Default Toogle For Driver information
    And the "driver information" icon is "displayed" on the layers-menu
    And I click the "Driver information" option on the list
    Then the "Traffic information signs" option is "displayed" on the new data layers-menu
    And the "traffic information signs" icon is "displayed" on the layers-menu
    And the "Traffic information signs" new trigger is "displayed" on the layers-menu
    And the "Traffic cameras" option is "displayed" on the new data layers-menu
    And the "traffic cameras" icon is "displayed" on the layers-menu
    And the "Traffic cameras" new trigger is "displayed" on the layers-menu
    And the "Car parks" option is "displayed" on the data layers-menu
    And the "car parks" icon is "displayed" on the layers-menu
    And the "Car parks" trigger is "displayed" on the layers-menu
    And the "Winter gritting routes" option is "displayed" on the new data layers-menu
    And the "winter gritting routes" icon is "displayed" on the layers-menu
    And the "Winter gritting routes" new trigger is "displayed" on the layers-menu


Scenario: Default Toogle For Public transport
    And the "Public transport" icon is " not displayed" on the layers-menu
    And I click the "Public transport" option on the list
    And the "bus stop" icon is "displayed" on the layers-menu
    And the "Bus stop" trigger is "displayed" on the layers-menu
    And the "Train station" option is "displayed" on the data layers-menu
    And the "train station" icon is "displayed" on the layers-menu
    And the "Train station" trigger is "displayed" on the layers-menu
    And the "Tube station" option is "displayed" on the data layers-menu
    And the "tube station" icon is "displayed" on the layers-menu
    And the "Tube station" trigger is "displayed" on the layers-menu

 Scenario: Default Toogle For Operational info
     And the "operational info" icon is "displayed" on the layers-menu
     And I click the "Operational info" option on the list
     Then the "Highway Authorities" option is "displayed" on the data layers-menu
     And the "Highway Authorities" icon is "displayed" on the layers-menu
     And the "Highway Authorities" trigger is "displayed" on the layers-menu
     And the "District Authorities" option is "displayed" on the data layers-menu
     And the "District Authorities" icon is "displayed" on the layers-menu
     And the "District Authorities" trigger is "displayed" on the layers-menu
     And the "Parishes" option is "displayed" on the data layers-menu
     And the "Parishes" icon is "displayed" on the layers-menu
     And the "Parishes" trigger is "displayed" on the layers-menu
     And the "Wards and UA Electoral divisions" option is "displayed" on the data layers-menu
     And the "Wards and UA Electoral divisions" icon is "displayed" on the layers-menu
     And the "Wards and UA Electoral divisions" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Operational info Other
    And the "operational info" icon is "displayed" on the layers-menu
    And I click the "Operational info" option on the list
    Then the "Bridges and restrictions" option is "displayed" on the new data layers-menu
    And the "Bridges and restrictions" icon is "displayed" on the layers-menu
    And the "Bridges and restrictions" new trigger is "displayed" on the layers-menu
    And the "Level Crossings" icon is "displayed" on the layers-menu
    And the "Level Crossings" trigger is "displayed" on the layers-menu
    And the "Traffic signals" icon is "displayed" on the layers-menu
    And the "Traffic signals" trigger is "displayed" on the layers-menu
    And the "Forward Planning roadworks" icon is "displayed" on the layers-menu
    And the "Forward Planning roadworks" trigger is "displayed" on the layers-menu
    And the "Restrictions: S58s & S85s" icon is "displayed" on the layers-menu
    And the "Restrictions: S58s & S85s" new trigger is "displayed" on the layers-menu
    And the "Lane Rental Scheme network" icon is "displayed" on the layers-menu
    And the "Lane Rental Scheme network" new trigger is "displayed" on the layers-menu
    And the "Priority Routes" icon is "displayed" on the layers-menu
    And the "Priority Routes" new trigger is "displayed" on the layers-menu

 Scenario: Default Toogle For Operational info NSG
     And the "operational info" icon is "displayed" on the layers-menu
     And I click the "Operational info" option on the list
     Then the "NSG" option is "displayed" on the new data layers-menu
      And the "NSG" icon is "displayed" on the layers-menu
      And the "NSG" new trigger is "displayed" on the layers-menu
      And the "NSG (Special designation)" icon is "displayed" on the layers-menu
      And the "NSG (Special designation)" new trigger is "displayed" on the layers-menu
      And the "NSG (Road status)" icon is "displayed" on the layers-menu
      And the "NSG (Road status" new trigger is "displayed" on the layers-menu
      And the "NSG (Reinstatement)" icon is "displayed" on the layers-menu
      And the "NSG (Reinstatement)" new trigger is "displayed" on the layers-menu
      And the "NSG (Permit streets)" icon is "displayed" on the layers-menu
      And the "NSG (Permit streets)" new trigger is "displayed" on the layers-menu

