# Jungle

A mini e-commerce application built with Rails 4.2, using stripe verification API and has admin built-in functionalities.


## Features 

- View all the store's available and sold out products on the home page
- Add any items to you cart and manage in the "Cart" section of the store
- Visit individual product's page with all of its details (price, quantity...) by clicking on the item
- Place an order using the stripe API and receive an order confirmation receipt with every products' details
- Sign up/Login using your credentials
- Login as Admin to manage/add to your store's dashboard, categories, products and sales
- As a user/visitor you can see the ongoing sales and the bonus they offer throughout the store
- View the "About us" page which describe the store's policy


## Final Product

!["Home page view"](https://raw.githubusercontent.com/Caronise/Jungle-rails/master/docs/main_page.png)

!["Product page with item details"](https://raw.githubusercontent.com/Caronise/Jungle-rails/master/docs/product_page.png)

!["My Cart page displaying items and total price, with payment functionality using the Stripe API"](https://raw.githubusercontent.com/Caronise/Jungle-rails/master/docs/payment.png)

!["Order receipt page displaying the item bought and total order price"](https://raw.githubusercontent.com/Caronise/Jungle-rails/master/docs/order.png)

!["Example of admin section where the admin can manage/add products"](https://raw.githubusercontent.com/Caronise/Jungle-rails/master/docs/admin.png)

## Getting Started

1. Fork and clone this repository.
2. Use `bundle install` to install dependencies.
3. Create a `config/database.yml` file by copying `config/database.example.yml`
4. Create a `config/secrets.yml` file by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to reset and create, load and seed the database
6. Create an .env file based on the .env.example provided
7. Sign up for a Stripe account on their website
8. Put Stripe keys (Obtained in your stripe account) into the appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server
10. Go to <http://localhost:3000/> in your browser.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
* Sass-rails
* Capybara
* Poltergeist