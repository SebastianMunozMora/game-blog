Rails.application.routes.draw do
  get 'test/index'
  get 'test/thumb'
  get 'test/full'
  get 'main_page/index'
  resources :articles
  resources :authors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main_page#index"
end
