describe('Home page', () => {
  it('takes you to home page', () => {
    cy.visit('/')
  });
  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });
  it("should add a product to cart", () => {
    cy.get('form.button_to')
      .first()
      .submit()
    cy.contains(" My Cart (1) ")
  });
})