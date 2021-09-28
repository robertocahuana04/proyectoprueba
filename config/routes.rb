Rails.application.routes.draw do

  get 'productos/index'
  get 'productos/show'
  #devise_for :users
  root to: "home#dasboard"
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  
  
  resources :registrodetrabajadores
  resources :reclamos
  resources :personas
  resources :compras
  resources :tipos
  resources :organizaciones
  resources :stoockdeproductos 
  resources :proveedores 
  
  
  
  resources :productos
  # devise_scope :user do
  #   get '/logout',  :to => 'sessions#destroy'
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
