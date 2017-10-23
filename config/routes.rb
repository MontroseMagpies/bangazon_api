Rails.application.routes.draw do
  resources :products
  resources :product_types
  resources :orders
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
