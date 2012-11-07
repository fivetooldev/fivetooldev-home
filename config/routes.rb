Fivetool::Application.routes.draw do
  resources :contact_messages

  get '/home', to: 'home#index', as: 'home'

  root to: 'home#index'
end
