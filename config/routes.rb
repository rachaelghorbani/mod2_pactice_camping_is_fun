Rails.application.routes.draw do
  resources :activities #, only: [:index, :show]
  resources :campers #, only: [:index]
  resources :signups
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
