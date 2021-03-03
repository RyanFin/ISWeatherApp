# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  - ruby 2.7.2p137

* Rails version
  - Rails 6.1.1

* My Notes
  - Setup: https://gorails.com/setup/osx/10.15-catalina
  - Install webpacker: rails webpacker:install
  - Run with: $ rails s
  - Add home and about pages with route configuration: $ rails g controller Pages home about
  - Add jQuery
    - Add new gems to Gemfile (gem 'jquery-rails') then I updated with: $ bundle install
    - Add jQuery: https://www.botreetechnologies.com/blog/introducing-jquery-in-rails-6-using-webpacker
      - $ yarn add jquery
      - Add code to config/webpack/environment.js

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
