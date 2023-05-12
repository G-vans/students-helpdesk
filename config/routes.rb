Rails.application.routes.draw do
  resources :votes
  resources :solutions
  devise_for :users
  resources :problems
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "main#index"
  post '/login', to: 'auth#login'
delete '/logout', to: 'auth#logout'

end
