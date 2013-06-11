Fivetool::Application.routes.draw do

  resources :contact_messages, only: [:create]

  get '/home', to: 'home#index', as: 'home'

  root to: 'home#show'

end
