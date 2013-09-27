Gameface::Application.routes.draw do

  devise_for :users

  root :to => 'splash#index'
  get '/home', :to => 'home#index'

  get '/profile', :to => 'profile#index'
  get '/profile/addgame', :to => 'profile#addgame'
  post '/profile/addgame', :to => 'profile#creategame'

  get '/gamehub', :to => 'gamehub#index'
  get '/gamerz', :to => 'gamerz#index'
end
