Rails.application.routes.draw do
  devise_for :admins
  root "books#index"

  devise_for :users, controllers: {
    registrations: "registrations",
  }

  resources :books do
    resources :reviews
  end

  resources :cart, only: %i[create destroy]

end
