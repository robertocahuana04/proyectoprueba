Rails.application.routes.draw do

  get 'productos/index'
  get 'productos/show'
  devise_for :users
  root to: "home#dasboard"

  resources :productos
  # devise_scope :user do
  #   get '/logout',  :to => 'sessions#destroy'
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
