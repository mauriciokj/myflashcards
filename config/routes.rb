Rails.application.routes.draw do
  get "/jogos", :to => "games#index"
  root to: 'visitors#index'
end
