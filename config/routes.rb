Rails.application.routes.draw do
  resources :articulos
  resources :ropas
  resources :tienda_ropa
  get 'inicio/home'
  root :to => "inicio#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
