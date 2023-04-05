require 'sidekiq/web'

Rails.application.routes.draw do
  resources :payments
  resources :bookings
  resources :movie_details
  resources :tickets
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'tickets#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
