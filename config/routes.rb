Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :costumes, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  get "my_booking", to: "bookings#my_booking"
  get "my_costume", to: "costumes#my_costume"
  post "bookings/:id/accept", to: "bookings#accept", as: :accept_booking
  post "bookings/:id/decline", to: "bookings#decline", as: :decline_booking
end
