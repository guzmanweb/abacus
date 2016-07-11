Rails.application.routes.draw do
  devise_for :users, controllers: { 
  	registrations: 'users/registrations',
  	sessions: 'users/sessions',
  	passwords: 'users/passwords'
 	}

  resources :users

  root 'static#home'
  get 'static/example'
  get 'static/home'
end
