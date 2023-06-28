Rails.application.routes.draw do
  resources :activities
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "activities#index"
  get '/activity', to: 'activities#index'
  get '/signout', to: 'sessions#destroy', as: 'signout'
  get '/sessions/new', to: 'sessions#new'
end
