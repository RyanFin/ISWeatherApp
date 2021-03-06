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
  - Ruby HTTP:
    - https://ruby-doc.org/stdlib-2.7.0/libdoc/net/http/rdoc/Net/HTTP.html
  - Rails API: https://api.rubyonrails.org/classes/ActionMailer.html
  - Bootstrap: https://getbootstrap.com/docs/5.0/getting-started/introduction/
  - Set up use of params to pass data with input form: https://www.youtube.com/watch?v=y57OnWV6dRE


* Unit testing
  - Getting Started with RSpec: https://semaphoreci.com/community/tutorials/getting-started-with-rspec
  - Running Simple RSpec: https://www.youtube.com/watch?v=K6RPMhcRICE&ab_channel=Monoso
  - Run from root directory: $ bundle exec rspec
  - Building Ruby Objects: https://www.rubyguides.com/ruby-tutorial/object-oriented-programming/
  - *IMPORTANT:* Move weather_data.rb from lib/services/ into the lib/ dir when performing unit testing with rspec: https://stackoverflow.com/questions/47119729/rails-loading-custom-class-from-lib-folder-in-controller


* Test Controllers
  - ISWeatherApp/test/controllers/pages_controller_test.rb
  - Run command in cli: $ rails test


* Configuration
  - Install webpacker: $ rails webpacker:install
  - Run with: $ rails s
