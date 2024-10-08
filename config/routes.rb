Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :chefs, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:show, :edit]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime m  onitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get '/users/:user_id/bookings', to: 'bookings#index', as: :user_bookings
  get '/dashboard', to: 'pages#pendings', as: :dashboard

  # Defines the root path route ("/")
  # root "posts#index"
end
