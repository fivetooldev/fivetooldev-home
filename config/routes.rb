Fivetool::Application.routes.draw do
  resources :contact_messages, only: [:create]
  resources :blog_entries

  get '/home', to: 'home#index', as: 'home'

  root to: 'home#index'
end