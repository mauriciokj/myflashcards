Rails.application.routes.draw do
  resources :cards
  devise_for :users

  get "/jogos", :to => "games#index"

  root to: 'visitors#index'
end
