Rails.application.routes.draw do
  namespace :v1 do
    resources :sessions, only: [:create, :destroy]
  end
  #devise_for :customers
  resources :wallets do
		resources :transfers
			#resources :comissions
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
