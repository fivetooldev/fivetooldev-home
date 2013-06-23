Fivetool::Application.routes.draw do

  resources :contact_messages, only: [:create]

  get '/home', to: 'home#show', as: 'home'

  root to: 'home#show'

end
