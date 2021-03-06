Rails.application.routes.draw do
  resources :kinds
  resources :cards
  devise_for :users

  get "/jogos", :to => "games#index", as: :games
  get "/jogos/tipos", :to => "games#kinds", as: :games_kinds
  get "/jogos/aleatorio", :to => "games#random", as: :games_random
  get "/jogos/cartas/:id", :to => "games#cards", as: :games_cards
  get "/jogos/simples/:id", :to => "games#simple", as: :game_simple
  post "/jogos/answer", :to => "games#answer", as: :answer
  get "/jogos/multiplo/:id", :to => "games#multiple", as: :game_multiple

  root to: 'games#index'
end
