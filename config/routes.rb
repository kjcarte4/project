Rails.application.routes.draw do
  resources :payments
  resources :trips
  resources :cars
  resources :users
  resources :car_ids

  get '/signup', to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
