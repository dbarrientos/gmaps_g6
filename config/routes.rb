Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  get 'pages/index'
  get 'pages/index2'
  get 'pages/index3'
  post 'pages/direccion'
  get 'pages/get_address'
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
