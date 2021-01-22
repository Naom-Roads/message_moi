Rails.application.routes.draw do
  resources :users
  root 'chatroom#index'
  get 'login', to: 'users#new'

end
