Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/sessions/logout', to: 'sessions#delete'
  root "sessions#login"
  resources :recipes
  get '/users/profile', to: "users#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :menus
end
