Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  root to: 'home#home'
  get 'home/about' => 'home#about'
end
