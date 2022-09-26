import { When, Then } from "cypress-cucumber-preprocessor/steps"


Then("the version number is displayed and it matches {string}", (versionNumber) => {
  cy.get(".css-luyq82").invoke('text').then((text) => {
    expect(text.trim()).equal(versionNumber);
  });

})

Then("I see the {string} label", (label, displayed) => {
  let is_element_exist = "not.exist"

  displayed == "displayed" ? (is_element_exist = "exist") : (is_element_exist = "not.exist")
  cy.get(".css-luyq82")
    .contains(label)
    .should(is_element_exist, { force: true })
})

Then("I click on the Legal Information Label", () => {
  cy.get('.css-yaovbq > a').invoke('removeAttr', 'target')
  cy.get(".css-yaovbq > a").click({force: true});
})

Then("the new tab contains Legal Information", () => {
  cy.url().should('include', Cypress.config().baseUrl+'/legal?lang=en-GB');

})

Then("I Close the tab", () => {
  cy.go('back');

})
