Rails.application.routes.draw do
  resources :cart_item_joins
  resources :carts
  resources :inventories
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
