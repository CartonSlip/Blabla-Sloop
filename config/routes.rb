Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :sloops
  resources :rides do
    resources :traveller_rides, only: %i[new create]
  end
  resources :traveller_rides, only: %i[edit update]
  resources :ride_requests do
    resources :rides, only: %i[new create]
  end
  resources :users, only: [:show] do
    resources :reviews, only: [:create]
  end
  get "/profil", to: "pages#profil"
  get "/about", to: "pages#about"
  resources :bookmarks, only: [:create, :destroy]
  resource :profile, only: [:edit, :update] # /profile MAIS ctrl : profiles
  resource :dashboard, only: [:show] # /dashboard MAIS ctrl : dashboards
end
