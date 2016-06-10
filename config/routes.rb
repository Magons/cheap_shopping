Rails.application.routes.draw do
  resources :products_lists
  resources :prices
  resources :products
  resources :markets

  root 'products#index'
end
