describe('Home page', () => {
  it('takes you to home page', () => {
    cy.visit('/')
  });
  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });
  it("There is 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });
  it('should click on one product and go to prodcut detail page', () => {
    cy.get('div.products > article > a')
      .should('have.attr', 'href')
      .then((href) => {
        cy.visit(href)
      })
      
  })
})