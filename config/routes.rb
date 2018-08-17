Rails.application.routes.draw do
  namespace :v1 do
    #get 'sessions/create'
    #get 'sessions/destroy'
    resources :sessions, only: [:create, :destroy]
  end
  #devise_for :customers
  resources :wallets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
