Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#home'
  get 'pages/blog'
  get 'pages/about'
  get 'pages/contact'
  resources :portfolio, only: [:show, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
