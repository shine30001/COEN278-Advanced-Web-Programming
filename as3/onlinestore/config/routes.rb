Rails.application.routes.draw do
  
  root "shopper#index", as: "shopper"
  #root "access#new"
  get 'shopper/', to: 'shopper#index'
  get 'shopper/index', to: 'shopper#index'
  get 'shopper/show', to: "shopper#show"
  get 'admin/', to: 'admin#index'
  get 'login/', to: 'access#new'
  post 'login/', to: 'access#create'
  delete 'logout/', to: 'access#destroy'
  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
