Fivetool::Application.routes.draw do
  match '/blog', to: 'blog#index', as: 'blog'
  match '/blog/:id', to: 'blog#show', as: 'published_blog_entry'
  
  resources :blog_entries

  resources :contact_messages, only: [:create]
  

  get '/home', to: 'home#index', as: 'home'

  resources :passwords, :controller => 'passwords'

  resources :users, :controller => 'users'

  match 'sign_up' => 'home#index', :as => 'sign_up'

  root to: 'home#index'
end