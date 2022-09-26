import { When, Then } from "cypress-cucumber-preprocessor/steps"
import { eq } from "cypress/types/lodash"
import { exists } from "fs"

const icons = new Map([
  ["health covid", "css-ewvijo"],
  ["covid protected", "css-xd1vt4"],
  ["covid road change", "css-1p9xq02"],
  ["covid school street", "css-5j6pwf"],
  ["covid testing station", "css-kwshjx"],
  ["vaccination centre", "css-retdk0"],
  ["live incident", "css-1q14454"],
  ["incident", "css-8je6rl"],
  ["accident", "css-aharnj"],
  ["congestion", "css-3v8vcs"],
  ["health emergency", "css-6u5x0p"],
  ["road closure incident", "css-l16rml"],
  ["lane closure incident", "css-hpnqj0"],
  ["closed hgv", "css-1kp98k0"],
  ["infrastructure", "css-10bw957"],
  ["road closure and diversion", "css-1c52fc8"],
  ["road closure", "css-1qwci3i"],
  ["diversion route", "css-sdiuvf"],
  ["hgv diversion route", "css-1osfwpz"],
  ["temporary oneway", "css-19soclo"],
  ["bridge closure", "css-2ddpxa"],
  ["traffic restrictions", "css-140tla3"],
  ["contraflow", "css-a34lba"],
  ["lane closure", "css-vxlb69"],
  ["footway closure", "css-1vjtd9s"],
  ["temporary speed limit", "css-rkogce"],
  ["weight restriction", "css-cqvp5y"],
  ["weight restriction suspension", "css-844zoy"],
  ["clear way", "css-ztanx0"],
  ["tow away zone", "css-1ipel98"],
  ["temporary parking restriction", "css-ufjtrw"],
  ["parking restriction suspension", "css-1nhf5ro"],
  ["bus way suspension", "css-7x0s55"],
  ["gritting in progress", "css-18gnnyp"],
  ["advisory preferred access route", "css-1losi9y"],
  ["road closure crossing", "css-13uvsnk"],
  ["road ahead closed", "css-1krwyk0"],
  ["no vehicle access", "css-1d8dhdj"],
  ["no right turn", "css-15he7ou"],
  ["no left turn", "css-m4lr75"],
  ["no u-turn", "css-1i2ivqf"],
  ["emergency access route", "css-xnx4j1"],
  ["access only", "css-1g4i3bj"],
  ["cycle lane", "css-1hwpm4u"],
  ["pedestrian zone", "css-1lr69tr"],
  ["widened footpath", "css-db1l7t"],
  ["one way suspension", "css-19bgqeh"],
  ["one way reversal", "css-m0moit"],
  ["two way traffic signal", "css-y37vht"],
  ["multiway traffic signal", "css-1jd3t2c"],
  ["stop and go", "css-nry9q2"],
  ["give and take", "css-wlk2kx"],
  ["priority signs", "css-lxx0jn"],
  ["convoy working", "css-380trf"],
  ["works stop", "css-swkoum"],
  ["road works", "css-1yodd0w"],
  ["weather", "css-1qsofxr"],
  ["flood", "css-lukmny"],
  ["landslip", "css-19slu93"],
  ["weather incident", "css-11ntbp5"],
  ["public events", "css-q6mxvt"],
  ["cycling", "css-wdntc1"],
  ["football", "css-ll5xgj"],
  ["horse racing", "css-xvpkoc"],
  ["motor sport event", "css-1cvxwfq"],
  ["rugby", "css-hu6rwc"],
  ["running", "css-19guyx6"],
  ["sport event", "css-47m93g"],
  ["carnival", "css-lh8lak"],
  ["polling station", "css-1jog6zw"],
  ["agricultural show", "css-1wdqeg0"],
  ["air show", "css-jv949t"],
  ["rememberance parade", "css-bikjxr"],
  ["chrismas event", "css-10fqgnu"],
  ["entertainment event", "css-ej1yh5"],
  ["festival", "css-17bon8i"],
  ["filming", "css-ivvlgc"],
  ["market", "css-1t18bgm"],
  ["cruise ship", "css-vvubrp"],
  ["funeral", "css-1octorm"],
  ["other", "css-f2bkpf"],
  ["", ""],
  ["Bus stop", "css-18g9tqn"],
  ["Train station", "css-17ba5eu"],
  ["Tube station", "css-qhus9z"],
  ["Highway Authorities", "css-3ymxc1"],
  ["District Authorities", "css-1v6zett"],
  ["Parishes", "css-aovs1f"],
  ["Wards and UA Electoral divisions", "css-x9xss1"],
  ["Bridges and restrictions", "css-siuzjt"],
  ["Traffic signals", "css-cbqc05"],
  ["Forward Planning roadworks", "css-1ofzgt5"],
  ["Restrictions: S58s & S85s", "css-18h98bo"],
  ["Lane Rental Scheme network", "css-1f9v889"],
  ["Priority Routes", "css-1gfgasd"],
  ["driver information", "css-8e2ue4"],
  ["traffic information signs", "css-lr5l71"],
  ["traffic cameras", "css-87m4bu"],
  ["car parks", "css-1llhb0r"],
  ["winter gritting routes", "css-19p0vkf"],
  ["public transport", "css-4oqgy5"],
  ["bus stop", "css-18g9tqn"],
  ["train station", "css-17ba5eu"],
  ["tube station", "css-qhus9z"],
  ["operational info", "css-1aatchq"],
  ["Level Crossings", "css-zya5fy"],
  ["Commonwealth games", "css-1u6utjv"],
  ["NSG", "css-121qp7w"],
  ["NSG (Special designation)", "css-121qp7w"],
  ["NSG (Road status)", "css-121qp7w"],
  ["NSG (Reinstatement)", "css-121qp7w"],
  ["NSG (Permit streets)", "css-121qp7w"],
  ["Road", "css-fhisk3"],
  ["Satellite", "css-1auvmcm"],
  ["Terrain", "css-7lmz07"],
  ["OpenStreetMap", "css-167yoda"],
])

When("I click on the data layer icon", () => {
  cy.intercept("GET", "/services/slides?lang=*").as("network")
  cy.wait("@network")
  cy.get("#on-omnibox > div > div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation1.css-encmhb > div > div:nth-child(1) > button.MuiButtonBase-root.MuiIconButton-root.MuiIconButton-sizeSmall.css-1e0pwxh")
  .click({ force: true })
})

When("I click the {string} option on the list", (optionListName) => {
  cy.get(".css-1u6b4j0").contains(optionListName).click({ force: true })
  cy.wait(1000)
})

Then ("I log the dataLayer", () => {
  cy.task('log', 'Data Layer')
})

Then("the {string} option is {string} on the layers-menu", (optionListName, displayed) => {
  cy.url().then((url) => {
    cy.task('log', 'URL: '+ url)
  })

  let is_element_exist = "not.exist"

  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get(".css-1nmkydy > .css-hhy13k > .css-1qx36yh > .css-v3z1wi > .css-1v3pb4k")
    .contains(optionListName)
    .should(is_element_exist, { force: true })
})

Then("the {string} option is {string} on the data layers-menu", (optionListName, displayed) => {
  let is_element_exist = "not.exist"

  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get(".css-15j76c0 > p")
    .contains(optionListName)
    .should(is_element_exist, { force: true })
})

Then("the {string} option is {string} on the new data layers-menu", (optionListName, displayed) => {
  let is_element_exist = "not.exist"

  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get(".css-9yaf8t > p")
    .contains(optionListName)
    .should(is_element_exist, { force: true })
})

Then ("the Live traffic is displayed", () => {
  cy.get(".css-1vp8jwk").should("exist")
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
  cy.get(".css-15j76c0 > p")
  .contains(optionListName)
  .should(is_element_exist, { force: true })
  cy.get(".css-1m9pwf3").should("exist", { force: true })
})

Then("the {string} trigger is {string} on the weather-menu but not active", (optionListName, displayed) => {
  let is_element_exist = "not.exist"

  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get(".css-15j76c0 > p")
  .contains(optionListName)
  .should(is_element_exist, { force: true })
  cy.get(".css-fm47xr").should("exist", { force: true })
})


Then("the {string} new trigger is {string} on the layers-menu", (optionListName, displayed) => {
  let is_element_exist = "not.exist"

  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get(".css-9yaf8t > p")
  .contains(optionListName)
  .should(is_element_exist, { force: true })
  cy.get(".css-1m9pwf3").should("exist", { force: true })
})


Then("the {string} base map trigger is {string} on the layers-menu", (optionListName, displayed) => {
  let is_element_exist = "not.exist"

  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get('.css-hhy13k > div:nth-child('+optionListName+') > .css-v3z1wi > div.MuiGrid-root.MuiGrid-item.MuiGrid-grid-xs-2.css-ger7et > span > input').should(
    is_element_exist,
    {
      force: true,
    },
  )
})

When("I Click on {string} option, {string}", (optionListName , position) => {
  cy.get('.css-hhy13k > div:nth-child('+position+') > .css-v3z1wi > div.MuiGrid-root.MuiGrid-item.MuiGrid-grid-xs-2.css-ger7et > span > input').click({ force: true })
})

When("Click on the data layer", () => {
  cy.get("#on-omnibox > div > div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation1.css-encmhb > div > div:nth-child(1) > button.MuiButtonBase-root.MuiIconButton-root.MuiIconButton-sizeSmall.css-1e0pwxh")
    .click({ force: true })
})

Then("the login window popsUp", (optionListName, displayed) => {
  cy.get(".ons-feature-availability-container")
        .should("exist", { force: true })
  cy.get("#on-sign-in").click({ force: true })
  cy.wait(1000)
})

Then("The Map displays {string} layout, {string}", (optionListName, id) => {
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

Then ("I click on Covid-19 Tongle All option", () => {
  cy.get(".css-n4rzf0 > .css-yyfs7f").eq(0).click({ force: true })
})

Then ("No Covid-19 options enable" , () => {
  cy.get("#on-omnibox > div > div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation1.css-encmhb > div.MuiCollapse-root.MuiCollapse-vertical.MuiCollapse-entered.css-c4sutr > div > div > div > div.MuiBox-root.css-1nmkydy > div.MuiBox-root.css-7p0tw3 > div:nth-child(1) > div > div.MuiCollapse-root.MuiCollapse-vertical.MuiCollapse-entered.css-c4sutr > div > div > div > div > div > div:nth-child(2) > div.MuiBox-root.css-0 > span > span.MuiButtonBase-root.MuiSwitch-switchBase.MuiSwitch-colorSuccess.PrivateSwitchBase-root.MuiSwitch-switchBase.MuiSwitch-colorSuccess.css-hk0iem")
    .should("exist",{ force: true })
})

Then ("All Covid-19 options enable" , () => {
  cy.get("#on-omnibox > div > div.MuiPaper-root.MuiPaper-elevation.MuiPaper-rounded.MuiPaper-elevation1.css-encmhb > div.MuiCollapse-root.MuiCollapse-vertical.MuiCollapse-entered.css-c4sutr > div > div > div > div.MuiBox-root.css-1nmkydy > div.MuiBox-root.css-7p0tw3 > div:nth-child(1) > div > div.MuiCollapse-root.MuiCollapse-vertical.MuiCollapse-entered.css-c4sutr > div > div > div > div > div > div:nth-child(2) > div.MuiBox-root.css-0 > span > span.MuiButtonBase-root.MuiSwitch-switchBase.MuiSwitch-colorSuccess.Mui-checked.PrivateSwitchBase-root.MuiSwitch-switchBase.MuiSwitch-colorSuccess.Mui-checked.Mui-checked.css-hk0iem")
    .should("exist",{ force: true })
})

Then ("The question mark icon is {string}" , (displayed) => {
  let is_element_exist = "not.exist"

  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get(".css-fhm9fh")
    .should(is_element_exist, { force: true })
})

Then ("I click on question mark icon" , () => {
  cy.get(".css-fhm9fh")
    .click({ force: true })
})

Then ("I click on question mark icon" , () => {
  cy.get(".css-fhm9fh")
    .click({ force: true })
})

Then("The {string} layer is {string}", (optionListName, displayed) => {
  let is_element_exist = "not.exist"

  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get(".css-13eyjz4")
    .contains(optionListName)
    .should(is_element_exist, { force: true })
})

Then ("I tongle the Car park" ,() => {
  cy.get("#on-layers-menu-group-18 > div > label:nth-child(6) > div:nth-child(3) > div > span")
    .click({ force: true })
})

When("I type in the search box the location {string}", (location) => {
  cy.get(".css-mnn31").clear({ force: true })
  cy.wait(500)
  cy.get(".css-mnn31").type(location,{ force: true })
  cy.wait(2000)
  cy.get(".css-mnn31").click({ force: true })
})

When("I select {string} from the dropdown list", (location) => {
  cy.wait(3000)
  cy.get(".css-8atqhb").should("exist")
  cy.get('.css-3blc9x').contains(location).click({ force: true })
  cy.wait(1000)
})

When("I select {string} work from the dropdown list", (location) => {
  cy.wait(3000)
  cy.get(".css-8atqhb").should("exist")
  cy.get('.css-1nybh4c').contains(location).click({ force: true })
  cy.wait(1000)
})

When("I disable all layers", () => {
  cy.get(`.ons-layer-switch-checkbox:checked`).click({ multiple: true, force: true })
})

When("I disable all duffys open layers", () => {
  cy.get(".css-1e0pwxh").eq(0).click({ force: true })
  cy.wait(500)
  //Reset Layers
  cy.get(".css-5b6um8 > .css-yyfs7f").click({ force: true })
  cy.wait(500)
  //Reset open layers
  cy.get(".css-ewvijo").click({ force: true })
  cy.wait(500)
  cy.get(".css-1q14454").click({ force: true })
  cy.wait(500)
  cy.get(".css-1c52fc8").click({ force: true })
  cy.wait(500)
  cy.get(".css-140tla3").click({ force: true })
  cy.wait(500)
  cy.get(".css-1yodd0w").click({ force: true })
  cy.wait(500)
  cy.get(".css-q6mxvt").click({ force: true })
  cy.wait(500)
})

When("I enable the {string} geoserver layer", (layerName) => {
  cy.intercept("**/geoserver/**").as("tiles")
  cy.get(`#${layerName}.ons-layer-switch-checkbox:not(:checked)`).click({ force: true })
  cy.wait("@tiles")
  cy.wait(1000)
})

When("I enable the {string} layer", (layerName) => {
  cy.get(".css-15j76c0 > p").contains(layerName).should("exist", { force: true })
  cy.get(".css-15j76c0 > p").contains(layerName).click({ force: true })
  cy.wait(500)
})

Then("I click on the data layer button", () =>
{
  cy.get(".css-1e0pwxh").should("exist")
  cy.get(".css-1e0pwxh").click({force: true})
  cy.wait(500)
})

Then("the callout shows the Car park name", () => {
  cy.get('#map-canvas > div > div > div:nth-child(2) > div:nth-child(3) > div > div:nth-child(4) > div.infoBox > div > div > header > h1').should('not.be.empty')

})

Then("the callout shows the location", () => {
  cy.get('#map-canvas > div > div > div:nth-child(2) > div:nth-child(3) > div > div:nth-child(4) > div.infoBox > div > div > div > div > div:nth-child(1) > table > tbody > tr:nth-child(1) > td.rwCallout_label').should('not.be.empty')
  cy.get('#map-canvas > div > div > div:nth-child(2) > div:nth-child(3) > div > div:nth-child(4) > div.infoBox > div > div > div > div > div:nth-child(1) > table > tbody > tr:nth-child(1) > td.rwCallout_info').should('not.be.empty')
})

Then("the callout shows the Available spaces", () => {
  cy.get('#map-canvas > div > div > div:nth-child(2) > div:nth-child(3) > div > div:nth-child(4) > div.infoBox > div > div > div > div > div:nth-child(1) > table > tbody > tr:nth-child(2) > td.rwCallout_label').should('not.be.empty')
  cy.get('#map-canvas > div > div > div:nth-child(2) > div:nth-child(3) > div > div:nth-child(4) > div.infoBox > div > div > div > div > div:nth-child(1) > table > tbody > tr:nth-child(2) > td.rwCallout_info').should('not.be.empty')
})

Then("the callout shows the Total capacity", () => {
  cy.get('#map-canvas > div > div > div:nth-child(2) > div:nth-child(3) > div > div:nth-child(4) > div.infoBox > div > div > div > div > div:nth-child(1) > table > tbody > tr:nth-child(2) > td.rwCallout_label').should('not.be.empty')
  cy.get('#map-canvas > div > div > div:nth-child(2) > div:nth-child(3) > div > div:nth-child(4) > div.infoBox > div > div > div > div > div:nth-child(1) > table > tbody > tr:nth-child(2) > td.rwCallout_info').should('not.be.empty')
})

Then("the callout shows the Status", () => {
  cy.get('#map-canvas > div > div > div:nth-child(2) > div:nth-child(3) > div > div:nth-child(4) > div.infoBox > div > div > div > div > div:nth-child(1) > table > tbody > tr:nth-child(3) > td.rwCallout_label').should('not.be.empty')
  cy.get('#map-canvas > div > div > div:nth-child(2) > div:nth-child(3) > div > div:nth-child(4) > div.infoBox > div > div > div > div > div:nth-child(1) > table > tbody > tr:nth-child(3) > td.rwCallout_info').should('not.be.empty')
})

Then("the callout shows the Click Here link", () => {
  cy.get('#map-canvas > div > div > div:nth-child(2) > div:nth-child(3) > div > div:nth-child(4) > div.infoBox > div > div > div > div > div:nth-child(2) > a').should('not.be.empty')
})

Then("the callout shows the Last updated", () => {
  cy.get('#map-canvas > div > div > div:nth-child(2) > div:nth-child(3) > div > div:nth-child(4) > div.infoBox > div > div > div > div > div.rwCallout_innerScroll.rwCallout_updateTime > span').should('not.be.empty')
})

Then("I click on Click Here inside the callout", () => {
  cy.get('#map-canvas > div > div > div:nth-child(2) > div:nth-child(3) > div > div:nth-child(4) > div.infoBox > div > div > div > div > div:nth-child(2) > a')
    .invoke('attr', 'href','//www.cambridgeshire.gov.uk')

  cy.get('#map-canvas > div > div > div:nth-child(2) > div:nth-child(3) > div > div:nth-child(4) > div.infoBox > div > div > div > div > div:nth-child(2) > a')
    .invoke('removeAttr', 'target').click({ force: true });
})

Then("I go to the website of Cambridge Council County.", () => {
  cy.url().should('eq', 'https://www.cambridgeshire.gov.uk/')
})

Then("I Close the callout", () => {
  cy.get("#map-canvas > div > div > div:nth-child(2) > div:nth-child(2) > div > div:nth-child(4) > div.infoBox > div > div > header > span").click({ force: true });
})

Then("I Click on Layers", () => {
  cy.get(".ons-icons-layers").click({ force: true })
})

Then("I enable the {string} layer", (layerName) => {
  cy.get(`#${layerName}.ons-layer-switch-checkbox:not(:checked)`).click({ force: true })
  cy.wait(1000)
})

Then("the callout bus title is displayed", () => {
  cy.get('#map-canvas > div > div > div:nth-child(2) > div:nth-child(3) > div > div:nth-child(4) > div.infoBox > div > div > header > h1').should('not.be.empty')
})
Then("the callout bus shows has the close cross", () => {
  cy.get('#map-canvas > div > div > div:nth-child(2) > div:nth-child(2) > div > div:nth-child(4) > div.infoBox > div > div > header > span').should("exist", { force: true })
})
Then("the callout bus shows the location", () => {
  cy.get('#map-canvas > div > div > div:nth-child(2) > div:nth-child(2) > div > div:nth-child(4) > div.infoBox > div > div > header > p > span').should('not.be.empty')

})
Then("the callout bus has the Live Departures", () => {
  cy.get('#map-canvas > div > div > div:nth-child(2) > div:nth-child(2) > div > div:nth-child(4) > div.infoBox > div > div > div > div > div > h2').should('not.be.empty')

})
Then("the callout bus has {string} Column, {string}", (colname,position) => {
  cy.get('#map-canvas > div > div > div:nth-child(2) > div:nth-child(2) > div > div:nth-child(4) > div > div > div > div > div > div > table.rwCallout_table.timetable > tbody > tr:nth-child(1) > th:nth-child('+position+')')
    .should('not.be.empty')
    cy.get('#map-canvas > div > div > div:nth-child(2) > div:nth-child(2) > div > div:nth-child(4) > div > div > div > div > div > div > table.rwCallout_table.timetable > tbody > tr:nth-child(1) > th:nth-child('+position+')')
    .should('contain',colname)

})
