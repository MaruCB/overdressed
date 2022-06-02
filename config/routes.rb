Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :costumes, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  get "my_booking", to: "bookings#my_booking"
end
