Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get 'home/show/:id', to: 'home#show', as: :home_show
  get 'home/users_all', to: 'home#users_all', as: :users_all
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
