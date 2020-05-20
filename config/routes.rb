Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :create, :new]
  resources :reviews, only: [:create, :new]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
