Feature: Time and Data Pickers
  Users can validate time picker controls

  Background: Anonymous user opens the Home page

    Given I'm not signed in
    When I click the Sign in button
      Then I should be in the "Sign in" page
    When I input "DuffyS" credentials and sign in
      Then I should be in the "TM" page

Scenario: C10- Time and date picker Smoke test
    When I click on the search box option to select dates
     And I click the date search option "Next two weeks" on the list
     Then I click on Calendar button
      And the time button is "not displayed"
      And I close the Calendar
    Then I click on the search box option to select dates
      And I click the date search option "Today" on the list
      And I click on Calendar button
      And the time button is "displayed"
      And I close the Calendar
    Then  I click on the search box option to select dates
      And I click the date search option "Next three months" on the list
      And I click on Calendar button
      And the time button is "not displayed"
      And I close the Calendar
    Then  I click on the search box option to select dates
      And I click the date search option "Next twelve months" on the list
      And I click on Calendar button
      And the time button is "not displayed"
      And I close the Calendar
    Then  I click on the search box option to select dates
      And I click the date search option "Today" on the list
      And I click on Calendar button
      And the time button is "displayed"
      And I choose a specific hour
      And I close the Calendar
    Then  I click on the search box option to select dates
      And I click the date search option "Today" on the list
      And I click on Calendar button
      And the time button is "displayed"
      And I choose a specific Start Date
      And I choose a specific End Date
      And I close the Calendar
    Then  I click on the search box option to select dates
      And I click the date search option "Next two weeks" on the list
      And I click on Calendar button
      And the time button is "not displayed"
      And I close the Calendar
    Then  I click on the search box option to select dates
      And I click the date search option "Next twelve months" on the list
      And I click on Calendar button
      And the time button is "not displayed"
      And I close the Calendar
    Then  I click on the search box option to select dates
      And I click the date search option "Next three months" on the list
      And I click on Calendar button
      And the time button is "not displayed"
      And I close the Calendar


