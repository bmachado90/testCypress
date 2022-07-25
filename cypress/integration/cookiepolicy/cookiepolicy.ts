import { should } from "chai"
import { Given, When, Then} from "cypress-cucumber-preprocessor/steps"
import { path } from "cypress/types/lodash/fp"

Given("the cookie container is {string}", (displayed) =>
{

  let is_element_exist = "not.exist"

  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get(".erw-gdpr-notice-container").should(is_element_exist, {
    force: true,


})

Then("the cookie container is cleared and {string}", (displayed) =>
{

  let is_element_exist = "not.exist"

  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get(".erw-gdpr-notice-container").should(is_element_exist, {force: true})
})

When("I click on the cookie preferences button",() =>
{

  cy.get('.col > p').click({ force: true });
  cy.get(".erw-gdpr-footer-right > .btn").click({ force: true });
  cy.visit('/legal/privacy-and-cookies-policy?lang=en-GB')

})
When("the privacy cookies is displayed in a new tab",() =>
{
  cy.url().should('include', '/legal/privacy-and-cookies-policy?lang=en-GB');

})

Then("the cookie preference button is {string}", (displayed) =>
{
//.erw-gdpr-footer-right > .btn
  cy.get('.col > p')
  let is_element_exist = "not.exist"
  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get(".erw-gdpr-footer-right > .btn").should(is_element_exist, {force: true})
})
Then("text {string} is displayed on the page",(text) => {

   cy.get(
    (".col > h1"),
  ).should('have.text', text)
  })



  Then ("the accept recommended settings is {string}", (displayed) =>
{

  let is_element_exist = "not.exist"

  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get(".erw-gdpr-footer-left > .btn").should(is_element_exist, {force: true})

When("I click on the accept recommended settings", () =>
{
  cy.get('.col > p').click({ force: true });
  cy.get(".erw-gdpr-footer-left > .btn").click({ force: true });
})

Then("Essential cookies is turned off by default",() =>
{
  cy.get(":nth-child(9) > b").should('be.visible')
  cy.get("#erw-essential-checkbox").should('be.disabled')

})
Then("the user preferences is turned on by default",() =>
{

  cy.get(":nth-child(12) > b").should('be.visible')
  cy.get("#erw-privacy-functional-checkbox").should('be.checked')
//
})
Then("the Analytics & Statistics cookies is turned on by default",() =>
{

  cy.get(":nth-child(15) > b").should('be.visible')
  cy.get("#erw-privacy-analytics-checkbox").should('be.checked')

})
Then("the Save Cookie Preferences button is turned off by default",() =>
 {

  cy.get("#erw-save-privacy-prefs").should('be.disabled')

})
When("I turn off Analytics & Statistics cookies",() =>
{

  cy.get("#erw-privacy-analytics-checkbox").uncheck()


})

 Then("the Save Cookies Preference button is enabled",() =>
 {

  cy.get("#erw-save-privacy-prefs").should('be.enabled')

})
 When("I click on Save Cookies Preference button",() =>
 {

  cy.get("#erw-save-privacy-prefs").click()

})
 Then("my cookies preferences are saved",() =>
 {

  cy.get("#erw-save-privacy-prefs").should('be.disabled')

})
When("I click on legal information",() =>
{
  cy.get(".row > .text-right > a").scrollIntoView().click({force: true})
  cy.visit("/legal?lang=en-GB")
  cy.url().should('include', '/legal?lang=en-GB');

})

Then("I can navigate to privacy and cookie policy from the page",() =>
{

   cy.get(":nth-child(4) > :nth-child(1) > a").click()
   cy.go('back')
})
})
})
