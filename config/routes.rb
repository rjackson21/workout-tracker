Rails.application.routes.draw do
  get 'workouts/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'pages#home'

  resources :workouts
  resources :category
end
