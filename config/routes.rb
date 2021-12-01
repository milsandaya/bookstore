Rails.application.routes.draw do

  root "books#index"

  resources :books do
    resources :reviews
  end

  # devise_for :admins {

  # }

  devise_for :users, controllers: {
    registrations: "registrations",
  }
end
