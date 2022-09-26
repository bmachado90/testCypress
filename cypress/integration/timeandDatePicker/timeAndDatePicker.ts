import { When, Then } from "cypress-cucumber-preprocessor/steps"

When("I click on the search box option to select dates", () => {
  cy.get(".css-1tsvksn").click({ force: true })
})

Then("I click the date search option {string} on the list", (dateOption) => {

  cy.get(".css-1uzmcsd")
  .contains(dateOption)
  .click({ force: true })
})

Then ("I click on Calendar button",() => {
  cy.get('.css-1s2n76j').click({ force: true })
})

Then ("the time button is {string}", (option) => {
  //cy.get(".ons-datepicker-time-"+option+"").should("exist",{ force: true }) //css-v3z1wi
  let is_element_exist = "not.exist"

  option == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get(".css-14dekvw")
    .should(is_element_exist, { force: true })
})

Then ("I close the Calendar", () => {
  cy.get('.css-1s2n76j').click({ force: true })
})

Then ("I choose a specific hour", () => {
  cy.get(".css-1m9pwf3").eq(0).click({ force: true })
  cy.wait(500)
  cy.get(".css-18zhmu4").should("exist")
  cy.get(".css-18zhmu4").eq(0).click({ force: true })
  cy.get(".css-18zhmu4").eq(0).clear({ force: true })
  cy.get(".css-18zhmu4").eq(0).type("1000", { force: true })

})

Then ("I choose a specific Start Date", () => {
  cy.get("#on-omnibox > div > div.MuiBox-root.css-oe8lge > div > div > div > div.MuiGrid-root.MuiGrid-container.MuiGrid-wrap-xs-nowrap.css-dym29j > div:nth-child(1) > div > div.MuiGrid-root.MuiGrid-container.css-1b1jvye > div:nth-child(3) > button")
  .click({ force: true })
  cy.wait(500)
  cy.get(".css-1ntroex > p")
  .contains("10")
  .click({ force: true })
  cy.wait(500)
})

Then ("I choose a specific End Date", () => {
  cy.get(".css-1ntroex > p")
  .contains("20")
  .click({ force: true })
  cy.wait(1000)
})



