Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
Rails.application.routes.draw do
  root "books#index"

  resources :books do
    resources :reviews
  end
end
