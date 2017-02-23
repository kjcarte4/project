Rails.application.routes.draw do
  resources :paypals
  resources :payments
  resources :trips
  resources :cars
  resources :users

  get '/signup', to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
