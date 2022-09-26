Feature: Data Layer Default Trigger

  User can toggle any data layers on or off

Background: Open Data Layer
    Given I'm in the "Home" page
    And I'm not signed in
    When I click on the data layer icon
     And I log the dataLayer


  Scenario: Default Toogle For  Covid-19 protected route
    And I click the "Covid-19 SafeStart restrictions" option on the list
    Then the "Covid-19 protected route" option is "displayed" on the data layers-menu
    And the "Covid-19 protected route" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For  Covid-19 school street
    And I click the "Covid-19 SafeStart restrictions" option on the list
    Then the "Covid-19 school street" option is "displayed" on the data layers-menu
    And the "Covid-19 school street" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For  Covid-19 vaccination centre
    And I click the "Covid-19 SafeStart restrictions" option on the list
    Then the "Covid-19 vaccination centre" option is "displayed" on the data layers-menu
    And the "Covid-19 vaccination centre" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For  Covid-19 road change
    And I click the "Covid-19 SafeStart restrictions" option on the list
    Then the "Covid-19 road change" option is "displayed" on the data layers-menu
    And the "Covid-19 road change" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For  Covid-19 vaccination centre
    And I click the "Covid-19 SafeStart restrictions" option on the list
    Then the "Covid-19 vaccination centre" option is "displayed" on the data layers-menu
    And the "Covid-19 vaccination centre" trigger is "displayed" on the layers-menu

# ========== Incident =============

Scenario: Default Toogle For Incident Turn On
    And I click the "Live incidents" option on the list
    Then the "Incident" option is "displayed" on the data layers-menu
    And the "Incident" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Accident Turn On
    And I click the "Live incidents" option on the list
    Then the "Accident" option is "displayed" on the data layers-menu
    And the "Accident" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Traffic congestion Turn On
    And I click the "Live incidents" option on the list
    Then the "Traffic congestion" option is "displayed" on the data layers-menu
    And the "Traffic congestion" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Health emergency Turn On
    And I click the "Live incidents" option on the list
    Then the "Health emergency" option is "displayed" on the data layers-menu
    And the "Health emergency" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Road Closure
    And I click the "Live incidents" option on the list
    Then the "Road closure" option is "displayed" on the data layers-menu
    And the "Road closure" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Lane Closure
    And I click the "Live incidents" option on the list
    Then the "Lane closure" option is "displayed" on the data layers-menu
    And the "Lane closure" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Closed to HGVs
    And I click the "Live incidents" option on the list
    Then the "Closed to HGVs" option is "displayed" on the data layers-menu
    And the "Closed to HGVs" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Infrastructure Issue
    And I click the "Live incidents" option on the list
    Then the "Infrastructure issue" option is "displayed" on the data layers-menu
    And the "Infrastructure issue" trigger is "displayed" on the layers-menu


# ========== Live Traffic =============
  Scenario: Default Toogle For Live Traffic
    And I click the "Live traffic" option on the list
    Then the Live traffic is displayed

# ========== Road Closure =============
  Scenario: Default Toogle For TM_LAYER_ROADCLOSURE_LIVE
    And I click the "Road closures and diversions" option on the list
    Then the "Road closure" option is "displayed" on the data layers-menu
    And the "Road closure" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Diversion route
    And I click the "Road closures and diversions" option on the list
   Then the "Diversion route" option is "displayed" on the data layers-menu
    And the "Diversion route" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For HGV Diversion route
    And I click the "Road closures and diversions" option on the list
    Then the "HGV Diversion route" option is "displayed" on the data layers-menu
    And the "HGV Diversion route" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Temporary one-way
    And I click the "Road closures and diversions" option on the list
    Then the "Temporary one-way" option is "displayed" on the data layers-menu
    And the "Temporary one-way" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Bridge closure
    And I click the "Road closures and diversions" option on the list
    Then the "Bridge closure" option is "displayed" on the data layers-menu
    And the "Bridge closure" trigger is "displayed" on the layers-menu


# ========== Traffic restrictions =============

  Scenario: Default Toogle For Lane closure
    And I click the "Traffic restrictions" option on the list
    Then the "Lane closure" option is "displayed" on the data layers-menu
    And the "Lane closure" trigger is "displayed" on the layers-menu


  Scenario: Default Toogle For Road ahead close
    And I click the "Traffic restrictions" option on the list
    Then the "Road ahead close" option is "displayed" on the data layers-menu
    And the "Road ahead close" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Access only
    And I click the "Traffic restrictions" option on the list
    Then the "Access only" option is "displayed" on the data layers-menu
    And the "Access only" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Contraflow
    And I click the "Traffic restrictions" option on the list
    Then the "Contraflow" option is "displayed" on the data layers-menu
    And the "Contraflow" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Gritting in progress
    And I click the "Traffic restrictions" option on the list
    Then the "Gritting in progress" option is "displayed" on the data layers-menu
    And the "Gritting in progress" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Widened footpath
    And I click the "Traffic restrictions" option on the list
    Then the "Widened footpath" option is "displayed" on the data layers-menu
    And the "Widened footpath" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Footway closure
    And I click the "Traffic restrictions" option on the list
    Then the "Footway closure" option is "displayed" on the data layers-menu
    And the "Footway closure" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Tow away zone
    And I click the "Traffic restrictions" option on the list
    Then the "Tow away zone" option is "displayed" on the data layers-menu
    And the "Tow away zone" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Clearway / no stopping
    And I click the "Traffic restrictions" option on the list
    Then the "Clearway / no stopping" option is "displayed" on the data layers-menu
    And the "Clearway / no stopping" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For No U-turn
    And I click the "Traffic restrictions" option on the list
    Then the "No U-turn" option is "displayed" on the data layers-menu
    And the "No U-turn" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For No right turn
    And I click the "Traffic restrictions" option on the list
    Then the "No right turn" option is "displayed" on the data layers-menu
    And the "No right turn" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For No left turn
    And I click the "Traffic restrictions" option on the list
    Then the "No left turn" option is "displayed" on the data layers-menu
    And the "No left turn" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For No vehicle access
    And I click the "Traffic restrictions" option on the list
    Then the "No vehicle access" option is "displayed" on the data layers-menu
    And the "No vehicle access" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Reversal of one-way
    And I click the "Traffic restrictions" option on the list
    Then the "Reversal of one-way" option is "displayed" on the data layers-menu
    And the "Reversal of one-way" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Temporary speed limit
    And I click the "Traffic restrictions" option on the list
    Then the "Temporary speed limit" option is "displayed" on the data layers-menu
    And the "Temporary speed limit" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Height restriction
    And I click the "Traffic restrictions" option on the list
    Then the "Height restriction" option is "displayed" on the data layers-menu
    And the "Height restriction" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Weight restriction
    And I click the "Traffic restrictions" option on the list
    Then the "Weight restriction" option is "displayed" on the data layers-menu
    And the "Weight restriction" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Length restriction
    And I click the "Traffic restrictions" option on the list
    Then the "Length restriction" option is "displayed" on the data layers-menu
    And the "Length restriction" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Temporary parking restriction
    And I click the "Traffic restrictions" option on the list
    Then the "Temporary parking restriction" option is "displayed" on the data layers-menu
    And the "Temporary parking restriction" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Suspension of busway
    And I click the "Traffic restrictions" option on the list
    Then the "Suspension of busway" option is "displayed" on the data layers-menu
    And the "Suspension of busway" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Suspension of one-way
    And I click the "Traffic restrictions" option on the list
    Then the "Suspension of one-way" option is "displayed" on the data layers-menu
    And the "Suspension of one-way" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Suspension of parking restriction
    And I click the "Traffic restrictions" option on the list
    Then the "Suspension of parking restriction" option is "displayed" on the data layers-menu
    And the "Suspension of parking restriction" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Suspension of weight restriction
    And I click the "Traffic restrictions" option on the list
    Then the "Suspension of weight restriction" option is "displayed" on the data layers-menu
    And the "Suspension of weight restriction" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Advisory / preferred access route
    And I click the "Traffic restrictions" option on the list
    Then the "Advisory / preferred access route" option is "displayed" on the data layers-menu
    And the "Advisory / preferred access route" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Emergency access route
    And I click the "Traffic restrictions" option on the list
    Then the "Emergency access route" option is "displayed" on the data layers-menu
    And the "Emergency access route" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Pedestrian zone
    And I click the "Traffic restrictions" option on the list
    Then the "Pedestrian zone" option is "displayed" on the data layers-menu
    And the "Pedestrian zone" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Road closure crossing
    And I click the "Traffic restrictions" option on the list
    Then the "Road closure crossing" option is "displayed" on the data layers-menu
    And the "Road closure crossing" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Cycle lane
    And I click the "Traffic restrictions" option on the list
    Then the "Cycle lane" option is "displayed" on the data layers-menu
    And the "Cycle lane" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Two-way traffic signals
    And I click the "Traffic restrictions" option on the list
    Then the "Two-way traffic signals" option is "displayed" on the data layers-menu
    And the "Two-way traffic signals" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Multi-way traffic signals
    And I click the "Traffic restrictions" option on the list
    Then the "Multi-way traffic signals" option is "displayed" on the data layers-menu
    And the "Multi-way traffic signals" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Stop and go
    And I click the "Traffic restrictions" option on the list
    Then the "Stop and go" option is "displayed" on the data layers-menu
    And the "Stop and go" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Give and take
    And I click the "Traffic restrictions" option on the list
    Then the "Give and take" option is "displayed" on the data layers-menu
    And the "Give and take" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Priority signs
    And I click the "Traffic restrictions" option on the list
    Then the "Priority signs" option is "displayed" on the data layers-menu
    And the "Priority signs" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Convoy working
    And I click the "Traffic restrictions" option on the list
    Then the "Convoy working" option is "displayed" on the data layers-menu
    And the "Convoy working" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Works stop
    And I click the "Traffic restrictions" option on the list
    Then the "Works stop" option is "displayed" on the data layers-menu
    And the "Works stop" trigger is "displayed" on the layers-menu

# =========== Roadworks ================

  Scenario: Default Toogle For Roadworks
    And I click the "Roadworks" option on the list
    Then the "Roadworks" option is "displayed" on the new data layers-menu
    And the "Roadworks" new trigger is "displayed" on the layers-menu

# =========== Weather ================

  Scenario: Default Toogle For Flood
    And I click the "Weather" option on the list
    Then the "Flood" option is "displayed" on the data layers-menu
    And the "Flood" trigger is "displayed" on the weather-menu but not active

  Scenario: Default Toogle For Landslip
    And I click the "Weather" option on the list
    Then the "Landslip" option is "displayed" on the data layers-menu
    And the "Landslip" trigger is "displayed" on the weather-menu but not active

  Scenario: Default Toogle For Weather incident
    And I click the "Weather" option on the list
    Then the "Weather incident" option is "displayed" on the data layers-menu
    And the "Weather incident" trigger is "displayed" on the weather-menu but not active


# =========== Public events ================

  Scenario: Default Toogle For Agricultural show
    And I click the "Public events" option on the list
    Then the "Agricultural show" option is "displayed" on the data layers-menu
    And the "Agricultural show" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Air show
    And I click the "Public events" option on the list
    Then the "Air show" option is "displayed" on the data layers-menu
    And the "Air show" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Carnival / parade / street party
    And I click the "Public events" option on the list
    Then the "Carnival / parade / street party" option is "displayed" on the data layers-menu
    And the "Carnival / parade / street party" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Christmas event
    And I click the "Public events" option on the list
    Then the "Christmas event" option is "displayed" on the data layers-menu
    And the "Christmas event" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Cruise ship
    And I click the "Public events" option on the list
    Then the "Cruise ship" option is "displayed" on the data layers-menu
    And the "Cruise ship" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Cycling
    And I click the "Public events" option on the list
    Then the "Cycling" option is "displayed" on the data layers-menu
    And the "Cycling" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Entertainment event
    And I click the "Public events" option on the list
    Then the "Entertainment event" option is "displayed" on the data layers-menu
    And the "Entertainment event" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Festival
    And I click the "Public events" option on the list
    Then the "Festival" option is "displayed" on the data layers-menu
    And the "Festival" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Filming
    And I click the "Public events" option on the list
    Then the "Filming" option is "displayed" on the data layers-menu
    And the "Filming" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Football
    And I click the "Public events" option on the list
    Then the "Football" option is "displayed" on the data layers-menu
    And the "Football" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Funeral
    And I click the "Public events" option on the list
    Then the "Funeral" option is "displayed" on the data layers-menu
    And the "Funeral" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Horse racing
    And I click the "Public events" option on the list
    Then the "Horse racing" option is "displayed" on the data layers-menu
    And the "Horse racing" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Market
    And I click the "Public events" option on the list
    Then the "Market" option is "displayed" on the data layers-menu
    And the "Market" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Motor sport event
    And I click the "Public events" option on the list
    Then the "Motor sport event" option is "displayed" on the data layers-menu
    And the "Motor sport event" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Polling station
    And I click the "Public events" option on the list
    Then the "Polling station" option is "displayed" on the data layers-menu
    And the "Polling station" trigger is "displayed" on the layers-menu

  # Scenario: Default Toogle For Queen's Jubilee
  #   And I click the "Public events" option on the list
  #   Then the "Queen's Jubilee" option is "displayed" on the data layers-menu
  #   And the "Queen's Jubilee" trigger is "displayed" on the layers-menu

    Scenario: Default Toogle For Remembrance parade
    And I click the "Public events" option on the list
    Then the "Remembrance parade" option is "displayed" on the data layers-menu
    And the "Remembrance parade" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Rugby
    And I click the "Public events" option on the list
    Then the "Rugby" option is "displayed" on the data layers-menu
    And the "Rugby" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Running
    And I click the "Public events" option on the list
    Then the "Running" option is "displayed" on the data layers-menu
    And the "Running" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Sport event
    And I click the "Public events" option on the list
    Then the "Sport event" option is "displayed" on the data layers-menu
    And the "Sport event" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Other
    And I click the "Public events" option on the list
    Then the "Other" option is "displayed" on the data layers-menu
    And the "Other" trigger is "displayed" on the layers-menu



# =========== Driver information ================

  Scenario: Default Toogle For Car parks
    And I click the "Driver information" option on the list
    Then the "Car parks" option is "displayed" on the data layers-menu
    And the "Car parks" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Electric vehicle charge points
    And I click the "Driver information" option on the list
    Then the "Electric vehicle charge points" option is "displayed" on the data layers-menu
    And the "Electric vehicle charge points" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Traffic cameras
    And I click the "Driver information" option on the list
    Then the "Traffic cameras" option is "displayed" on the new data layers-menu
    And the "Traffic cameras" new trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Traffic information signs
    And I click the "Driver information" option on the list
    Then the "Traffic information signs" option is "displayed" on the new data layers-menu
    And the "Traffic information signs" new trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Winter gritting routes
    And I click the "Driver information" option on the list
    Then the "Winter gritting routes" option is "displayed" on the new data layers-menu
    And the "Winter gritting routes" new trigger is "displayed" on the layers-menu

# =========== Public transport ================

  Scenario: Default Toogle For Bus stop
    And I click the "Public transport" option on the list
    Then the "Bus stop" option is "displayed" on the data layers-menu
    And the "Bus stop" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Train station
    And I click the "Public transport" option on the list
    Then the "Train station" option is "displayed" on the data layers-menu
    And the "Train station" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Tube station
    And I click the "Public transport" option on the list
    Then the "Tube station" option is "displayed" on the data layers-menu
    And the "Tube station" trigger is "displayed" on the layers-menu

# =========== Operational info ================

  Scenario: Default Toogle For Highway Authorities
    And I click the "Operational info" option on the list
    Then the "Highway Authorities" option is "displayed" on the data layers-menu
    And the "Highway Authorities" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For District Authorities
    And I click the "Operational info" option on the list
    Then the "District Authorities" option is "displayed" on the data layers-menu
    And the "District Authorities" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Wards and UA Electoral divisions
    And I click the "Operational info" option on the list
    Then the "Wards and UA Electoral divisions" option is "displayed" on the data layers-menu
    And the "Wards and UA Electoral divisions" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Parishes
    And I click the "Operational info" option on the list
    Then the "Parishes" option is "displayed" on the data layers-menu
    And the "Parishes" trigger is "displayed" on the layers-menu

# =========== Operational info => Others ================

  Scenario: Default Toogle For Bridges and restrictions
    And I click the "Operational info" option on the list
    Then the "Bridges and restrictions" option is "displayed" on the new data layers-menu
    And the "Bridges and restriction" new trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Level Crossings
    And I click the "Operational info" option on the list
    Then the "Level Crossings" option is "displayed" on the data layers-menu
    And the "Level Crossings" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Traffic signals
    And I click the "Operational info" option on the list
    Then the "Traffic signals" option is "displayed" on the data layers-menu
    And the "Traffic signals" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Forward Planning roadworks
     And I click the "Operational info" option on the list
    Then the "Forward Planning roadworks" option is "displayed" on the data layers-menu
    And the "Forward Planning roadworks" trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Restrictions: S58s & S85s
    And I click the "Operational info" option on the list
    Then the "Restrictions: S58s & S85s" option is "displayed" on the new data layers-menu
    And the "Restrictions: S58s & S85s" new trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Lane Rental Scheme network
    And I click the "Operational info" option on the list
    Then the "Lane Rental Scheme network" option is "displayed" on the new data layers-menu
    And the "Lane Rental Scheme network" new trigger is "displayed" on the layers-menu

  Scenario: Default Toogle For Priority Routes
    And I click the "Operational info" option on the list
    Then the "Priority Routes" option is "displayed" on the new data layers-menu
    And the "Priority Routes" new trigger is "displayed" on the layers-menu
