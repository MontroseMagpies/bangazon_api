Rails.application.routes.draw do
  resources :employees
  resources :departments
  resources :computers
  resources :product_orders
  resources :orders
  resources :products
  resources :payment_types
  resources :product_types
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
