Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/about', to: 'pages#about'
  
  resources :courses do
    resources :progresses, only: [:create, :update]
    resources :comments, only: [:create]
    resources :exercises, only: [:new, :create]

    member do
      get :lecture
      get :video
      get :code
      get :visualization
      get :comments
    end
  end

  resources :comments, only: :update

  resources :users, only: [:edit, :update]

  get '/dashboard', to: 'users#dashboard'
  resources :comments, only: [:destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
