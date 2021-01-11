Rails.application.routes.draw do
  get 'inicio/home'
  root :to => "inicio#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
