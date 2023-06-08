Rails.application.routes.draw do
  resources :activities
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/activity', to: 'activities#index'
  get '/strava/authorize', to: 'strava#authorize'
  get '/strava/callback', to: 'strava#callback'
end
