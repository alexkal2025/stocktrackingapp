Rails.application.routes.draw do
  resources :stocks
  devise_for :users
  root 'home#index'
  get 'about' => 'home#about'
  post '/' => 'home#index'
end
