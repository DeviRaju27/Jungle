# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

## Implemented Features

1. Sold Out Badge
-  When a product has 0 quantity, a sold out badge should be displayed on the product list page
2. Admin Categories
 - Admin users can list and create new categories
 - Admins can add new products using the new category
3. User Authentication
- As a Visitor I can go to the registration page from any page in order to create an account
-  As a Visitor I can sign up for a user account with my e-mail, password, first name and last name
- As a Visitor I can sign in using my e-mail and password
- As a User I can log out from any page
- As a User I cannot sign up with an existing e-mail address (uniqueness validation)
- Passwords are not stored as plain text in the database. Instead, has_secure_password is used in the User model, leveraging the bcrypt gem
4. Order Details Page
-  The order page contains items, their image, name, description, quantities and line item totals
- The final amount for the order is displayed
- The email that was used to place the order is displayed
5. Missing Admin Security
- User must enter HTTP auth login/password to access admin functionality
6. Checking Out with Empty Cart
- When the cart is empty and the user goes to the carts#show page, instead of displaying the contents and a stripe checkout button, display a friendly message about how it is empty and link to the home page

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe

## Screenshots
![Sold Out Badge](https://github.com/DeviRaju27/Jungle/blob/master/public/uploads/Sold-out-badge.png)
![Cart as a Visitor](https://github.com/DeviRaju27/Jungle/blob/master/public/uploads/Cart-as-a-visitor.png)
![Stripe Payment Window](https://github.com/DeviRaju27/Jungle/blob/master/public/uploads/Stripe-payment.png)
![Order Confirmation for Registered Users](https://github.com/DeviRaju27/Jungle/blob/master/public/uploads/order-confirmation.jpeg)
![Admin All Products](https://github.com/DeviRaju27/Jungle/blob/master/public/uploads/admin-products.png)
![Admin New Product Form](https://github.com/DeviRaju27/Jungle/blob/master/public/uploads/admin-new-product.png)
![Admin New Category Form](https://github.com/DeviRaju27/Jungle/blob/master/public/uploads/admin-new-category.png)

