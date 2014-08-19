Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'

  get '/dashboard', to: 'dashboard#index'
end
