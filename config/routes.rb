Rails.application.routes.draw do
  # setup main index page
  root 'pages#home'

  # get 'pages/:postcode', to: 'pages#home'
  # get "/weatherdata", to: "pages#home"
  # get "pages/:postcode", to: "pages#weatherdata" #set up user input params for user postcode input values
  get 'pages/home'
  get 'pages/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
