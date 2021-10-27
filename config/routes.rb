Rails.application.routes.draw do
  
  root to: "home#dasboard"
  resources :productos
  get 'productos/index'
  get 'productos/show'
  #devise_for :users
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  
  resources :usuarios
  resources :registrodetrabajadores
  resources :reclamos
  resources :personas
  resources :compras
  resources :tipos
  resources :organizaciones
  resources :stoockdeproductos 
  resources :proveedores
  post "/proveedores/:id/edit" =>"proveedores#edit" 
  
  
  resources :productos
  # devise_scope :user do
  #   get '/logout',  :to => 'sessions#destroy'
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
