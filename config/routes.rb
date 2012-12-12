Fivetool::Application.routes.draw do
  #resources :blog_entries, only: [:index, :show]

  resources :contact_messages, only: [:create]

  get '/home', to: 'home#index', as: 'home'

  root to: 'home#index'
end