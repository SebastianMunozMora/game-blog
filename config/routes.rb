Rails.application.routes.draw do
  get 'hello/coolHello'
  get 'hello/niceHello'
  get 'hello/coolHello'
  resources :articles
  resources :authors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"
end
