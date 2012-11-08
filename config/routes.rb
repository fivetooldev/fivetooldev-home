Fivetool::Application.routes.draw do
  resources :blog_entries

  resources :contact_messages

  get '/home', to: 'home#index', as: 'home'

  root to: 'home#index'
end
