Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :events do
    resources :bookings, except: [:create]
    post "/bookings", to: "bookings#create", as: 'create_booking'
  end

  get "/dashboard", to: "pages#dashboard"
  # deletion goes outside the nested section
end
