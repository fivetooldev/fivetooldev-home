Fivetool::Application.routes.draw do
  match '/blog', to: 'blog#index', as: 'blog'
  match '/blog/:id', to: 'blog#show', as: 'published_blog_entry'

  resources :contact_messages, only: [:create]

  get '/home', to: 'home#index', as: 'home'

  root to: 'home#index'
end