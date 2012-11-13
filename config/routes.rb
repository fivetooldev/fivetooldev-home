Fivetool::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :blog_entries, only: [:index, :show]

  resources :contact_messages, only: [:create]

  get '/home', to: 'home#index', as: 'home'

  root to: 'home#index'
end