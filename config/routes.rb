Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  root to: 'movies#index'
  resources :movies
  resources :people
  resources :genres
end
