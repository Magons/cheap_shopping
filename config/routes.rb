Rails.application.routes.draw do
  resources :prices
  resources :products
  resources :markets

  root 'products#index'
end
