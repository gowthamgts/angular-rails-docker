Rails.application.routes.draw do
	
  mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
  
  root 'todos#index'
  resources :todos
end
