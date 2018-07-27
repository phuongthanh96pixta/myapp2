Rails.application.routes.draw do
  root to: 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/signup',  to: 'devise/registrations#new'
  post '/signup',  to: 'devise/registrations#create'
  get '/signout',  to: 'devise/registrations#destroy'
  get '/user',    to: 'users#show'
  get '/users',    to: 'users#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
  
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret',
    confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
end
