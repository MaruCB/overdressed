Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :costumes, only: [:index, :show, :new, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  get "my_bookings", to: "bookings#my_bookings"
end
