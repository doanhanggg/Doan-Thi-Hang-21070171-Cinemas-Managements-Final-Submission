require 'sidekiq/web'

Rails.application.routes.draw do
  resources :booking_tickets
  resources :movie_details
  resources :payments
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
