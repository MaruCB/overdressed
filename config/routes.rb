Rails.application.routes.draw do
  devise_for :users
  root to: "users#home"
  resources :costumes, only: [:index, :show, :new, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  get "my_bookings", to: "bookings#my_bookings"
end
