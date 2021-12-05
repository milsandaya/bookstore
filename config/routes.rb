Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :admins
  root "books#index"

  get "about", to: "about#index"
  get "contact", to: "contact#index"

  devise_for :users, controllers: {
    registrations: "registrations",
  }

  resources :books do
    resources :reviews
  end

  resources :cart, only: %i[create destroy]

end
