Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_up => 'register', :sign_in => 'login', :sign_out => 'logout'}
  get 'sessions/new'

  get 'sessions/create'

  resources :sessions, only: [:new, :create]
  resources :users
  resources :comments
  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
