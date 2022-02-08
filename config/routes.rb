Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'pages#home'

  resources :workouts
  resources :category 
 
  get "/pages/home", to: "pages#home"
  get "/pages/about" , to: "pages#about"
  get "/workout/index", to: 'workouts#index'
  delete "workout/:id", to: 'workouts#destroy'

  devise_scope :user do
    get "/users/sign_out", to: 'devise/sessions#destroy'
  end

  
  
  
end
