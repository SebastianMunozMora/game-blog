Rails.application.routes.draw do
  get 'custom_article/index'
  get 'morse_interpreter/index'
  get 'test/index'
  get 'test/thumb'
  get 'test/full'
  get 'main_page/index'
  resources :articles
  resources :authors
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main_page#index"
end
