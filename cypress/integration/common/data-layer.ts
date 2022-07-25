import { When, Then } from "cypress-cucumber-preprocessor/steps"

const icons = new Map([
  ["health covid", "ic-nrw-health-covid"],
  ["covid protected", "ic-nrw-covid-protected"],
  ["covid road change", "ic-nrw-covid-road-change"],
  ["covid school street", "ic-nrw-covid-school-street"],
  ["covid testing station", "ic-nrw-covid-testing-station"],
  ["vaccination centre", "ic-nrw-vaccination-centre"],
  ["live incident", "ic-head-warning"],
  ["incident", "ic-nrw-li-incident"],
  ["accident", "ic-nrw-li-accident"],
  ["congestion", "ic-nrw-li-congestion"],
  ["health emergency", "ic-nrw-health-emergency"],
  ["road closure", "ic-nrw-li-roadclosure"],
  ["lane closure", "ic-nrw-li-laneclosure"],
  ["closed hgv", "ic-nrw-li-closedhgv"],
  ["infrastructure", "ic-nrw-li-infrastructure"],
  ["road closure and diversion", "ic-head-closures"],
  ["road closure", "ic-nrw-rcd-roadclosure"],
  ["diversion route", "ic-nrw-rcd-diversionroute"],
  ["hgv diversion route", "ic-nrw-rcd-hgvdiversionroute"],
  ["temporary oneway", "ic-nrw-rcd-temporaryoneway"],
  ["bridge closure", "ic-nrw-tr-bridgeclosure"],
  ["traffic restrictions", "ic-head-restrictions"],
  ["contraflow", "ic-nrw-rcd-contraflow"],
  ["lane closure", "ic-nrw-rcd-laneclosure"],
  ["footway closure", "ic-nrw-rcd-footwayclosure"],
  ["temporary speed limit", "ic-nrw-tr-temporaryspeedlimit"],
  ["weight restriction", "ic-nrw-tr-weightrestriction"],
  ["weight restriction suspension", "ic-nrw-tr-weightrestrictionsuspension"],
  ["clear way", "ic-nrw-tr-clearway"],
  ["tow away zone", "ic-nrw-tr-towawayzone"],
  ["temporary parking restriction", "ic-nrw-tr-temporaryparkingrestriction"],
  ["parking restriction suspension", "ic-nrw-tr-parkingrestrictionsuspension"],
  ["bus way suspension", "ic-nrw-tr-buswaysuspension"],
  ["gritting in progress", "ic-nrw-tr-gritting"],
  ["advisory preferred access route", "ic-nrw-tr-advisoryaccessroute"],
  ["road closure crossing", "ic-nrw-tr-closurecrossing"],
  ["road ahead closed", "ic-nrw-tr-roadaheadclosed"],
  ["no vehicle access", "ic-nrw-tr-novehicleaccess"],
  ["no right turn", "ic-nrw-tr-norightturn"],
  ["no left turn", "ic-nrw-tr-noleftturn"],
  ["no u-turn", "ic-nrw-tr-nouturn"],
  ["emergency access route", "ic-nrw-emergency-access-route"],
  ["access only", "ic-nrw-tr-access-only"],
  ["cycle lane", "ic-nrw-tr-cycle-lane"],
  ["pedestrian zone", "ic-nrw-tr-pedestrian-zone"],
  ["widened footpath", "ic-nrw-tr-widened-footpath"],
  ["one way suspension", "ic-nrw-tr-widened-footpath"],
  ["one way reversal", "ic-nrw-tr-reversaloneway"],
  ["two way traffic signal", "ic-nrw-tr-twowaysignals"],
  ["multiway traffic signal", "ic-nrw-tr-multiwaysignals"],
  ["stop and go", "ic-nrw-tr-stopandgo"],
  ["give and take", "ic-nrw-tr-stopandgo"],
  ["priority signs", "ic-nrw-tr-prioritysigns"],
  ["convoy working", "ic-nrw-tr-prioritysigns"],
  ["works stop", "ic-nrw-tr-worksstop"],
  ["road works", "ic-head-roadworks"],
  ["weather", "ic-head-weather"],
  ["flood", "ic-nrw-li-flood"],
  ["landslip", "ic-nrw-li-landslip"],
  ["weather incident", "ic-nrw-li-weatherincident"],
  ["public events", "ic-head-public-events"],
  ["cycling", "ic-nrw-pe-cycling"],
  ["football", "ic-nrw-pe-football"],
  ["horse racing", "ic-nrw-pe-horse"],
  ["motor sport event", "ic-nrw-pe-motor"],
  ["rugby", "ic-nrw-pe-rugby"],
  ["running", "ic-nrw-pe-running"],
  ["sport event", "ic-nrw-pe-sport"],
  ["carnival", "ic-nrw-pe-carnival"],
  ["polling station", "ic-nrw-pe-polling"],
  ["agricultural show", "ic-nrw-pe-agricultural"],
  ["air show", "ic-nrw-pe-air"],
  ["rememberance parade", "ic-nrw-pe-remembrance"],
  ["chrismas event", "ic-nrw-pe-christmas"],
  ["entertainment event", "ic-nrw-pe-entertainment"],
  ["festival", "ic-nrw-pe-festival"],
  ["filming", "ic-nrw-pe-filming"],
  ["market", "ic-nrw-pe-market"],
  ["cruise ship", "ic-nrw-pe-cruise"],
  ["funeral", "ic-nrw-pe-funeral"],
  ["other", "ic-nrw-pe-other"],
  ["", ""],
  ["Bus stop", "ic-nrw-pt-busstops"],
  ["Train station", "ic-nrw-pt-trainstops"],
  ["Tube station", "ic-nrw-pt-tubestations"],
  ["Highway Authorities", "ic-nrw-oi-ha"],
  ["District Authorities", "ic-nrw-oi-da"],
  ["Parishes", "ic-nrw-oi-pb"],
  ["Wards and UA Electoral divisions", "ic-nrw-oi-wards"],
  ["Bridges and restrictions", "ic-nrw-oi-bridges"],
  ["Traffic signals", "ic-nrw-oi-sig"],
  ["Forward Planning roadworks", "ic-nrw-oi-fw"],
  ["Restrictions: S58s & S85s", "ic-nrw-oi-section58"],
  ["Lane Rental Scheme network", "ic-nrw-oi-lr"],
  ["Priority Routes", "ic-nrw-oi-epr"],
  ["driver information", "ic-head-info"],
  ["traffic information signs", "ic-nrw-ti-trafficinformationsigns"],
  ["traffic cameras", "ic-nrw-ti-trafficcameras"],
  ["car parks", "ic-nrw-ti-carparks"],
  ["winter gritting routes", "ic-nrw-oi-winter"],
  ["public transport", "ic-head-transport"],
  ["bus stop", "ic-nrw-pt-busstops"],
  ["train station", "ic-nrw-pt-trainstops"],
  ["tube station", "ic-nrw-pt-tubestations"],
  ["operational info", "ic-head-settings"],
  ["Level Crossings", "ic-nrw-levelcrossing"],
  ["Commonwealth games", "ic-head-birmingham-2022"],
  ["NSG", "ic-nrw-oi-nsg"],
  ["NSG (Special designation)", "ic-nrw-oi-nsg"],
  ["NSG (Road status)", "ic-nrw-oi-nsg"],
  ["NSG (Reinstatement)", "ic-nrw-oi-nsg"],
  ["NSG (Permit streets)", "ic-nrw-oi-nsg"],
  ["Road", "map-roads"],
  ["Satellite", "map-satellite"],
  ["Terrain", "map-terrain"],
  ["OpenStreetMap", "map-ost"],
])

When("I click on the data layer icon", () => {
  cy.intercept("GET", "/services/slides?lang=*").as("network")
  cy.wait("@network")
  cy.get(".ons-icons-layers").click({ force: true })
})

When("I click the {string} option on the list", (optionListName) => {
  cy.get(".ons-zoom-popover").contains(optionListName).click({ force: true })
  cy.wait(1000)
})

Then("the {string} option is {string} on the layers-menu", (optionListName, displayed) => {
  let is_element_exist = "not.exist"

  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get(".ons-layer-name > .row > .col")
    .contains(optionListName)
    .should(is_element_exist, { force: true })
})

Then ("the Live traffic is displayed", () => {
  cy.get(".ons-live-traffic-cong").should("exist")
})


Then("the {string} layername is {string} on the layers-menu", (optionListName, displayed) => {
  let is_element_exist = "not.exist"

  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get(".ons-layer-name").contains(optionListName).should(is_element_exist, { force: true })
})

Then("the {string} icon is {string} on the layers-menu", (icon, displayed) => {
  let is_element_exist = "not.exist"
  const icon_name = "." + icons.get(icon)

  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get(icon_name).should(is_element_exist, { force: true })
})

Then("the {string} trigger is {string} on the layers-menu", (optionListName, displayed) => {
  let is_element_exist = "not.exist"

  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get('label.row.no-gutters.ons-layer.active[for="' + optionListName + '"] ').should(
    is_element_exist,
    {
      force: true,
    },
  )
})

Then("the {string} tm trigger is {string} on the layers-menu", (optionListName, displayed) => {
  let is_element_exist = "not.exist"

  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get('label.row.no-gutters.ons-layer[for="' + optionListName + '"] ').should(
    is_element_exist,
    {
      force: true,
    },
  )
})


Then("the {string} base map trigger is {string} on the layers-menu", (optionListName, displayed) => {
  let is_element_exist = "not.exist"

  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get('label.row.no-gutters.ons-base-map-option[for="' + optionListName + '"] ').should(
    is_element_exist,
    {
      force: true,
    },
  )
})

Then("the {string} option is {string} on the layers-menu", (optionListName, displayed) => {
  let is_element_exist = "not.exist"

  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get(".ons-layer-name > .row > .col")
    .contains(optionListName)
    .should(is_element_exist, { force: true })
})

When("I Click on {string} option, {string}", (optionListName , position) => {
  cy.get(".ons-base-map > div > section > div > div > label:nth-child("+position+") > div:nth-child(3) > div > span").click({ force: true })
})

When("Click on the data layer", () => {
  cy.get(".ons-icons-layers").click({ force: true })
})

Then("the login window popsUp", (optionListName, displayed) => {
  cy.get(".ons-feature-availability-container")
        .should("exist", { force: true })
  cy.get("#on-sign-in").click({ force: true })
})

Then("The Map displays {string} layout, {string}", (optionListName, id) => {
  cy.wait(1000);
  cy.get("#map-canvas > div > div > div:nth-child(2) > div:nth-child(1) > div:nth-child(5) > div > div:nth-child("+id+") > div:nth-child(2) > img")
      .invoke('attr', 'src').should('contain',optionListName)
})

Then("Map must displays {string} layout", (optionListName) => {
  cy.get("#map-canvas > div > div > div:nth-child(2) > div:nth-child(1) > div:nth-child(5) > div > div:nth-child(1) > img")
      .invoke('attr', 'src').should('contain',optionListName)
})

Then("Map displays {string} layout on screen", (optionListName) => {
  cy.get("#map-canvas > div > div > div:nth-child(2) > div:nth-child(1) > div:nth-child(5) > div > div:nth-child(1) > div > img")
      .invoke('attr', 'src').should('contain',optionListName)
})

