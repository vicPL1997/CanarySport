Rails.application.routes.draw do
  get 'contacto/index'
  get 'panel_administracion/index'
  resources :articulos
  resources :ropas
  resources :tienda_ropa
  resources :tienda_articulo
  resources :panel_administracion
  resources :contacto
  get 'inicio/home'
  root :to => "inicio#home"


  get 'signup', to: 'usuarios#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


  resources :usuarios
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
