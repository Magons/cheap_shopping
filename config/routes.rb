Rails.application.routes.draw do
  resources :products_lists do
    get 'cost_calculation', on: :collection
  end
  resources :prices
  resources :products
  resources :markets

  root 'products_lists#new'
end
