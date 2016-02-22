Dsmilansky::Application.routes.draw do
  root to: 'pages#home'


  get 'home', to: 'pages#home'
  
  get 'fun', to: 'pages#fun'
  get 'contact', to: 'pages#contact'
  get 'fun/gameoflife', to: 'pages#gameoflife', as: 'gameoflife'

  post 'create_contact', to: 'pages#create_contact'

  resources :posts, except: [:show, :index]  
  get 'blog', to: 'posts#index'
  get '/blog/:id', to: 'posts#show', :as => "view_posts"
  get 'posts', to: 'posts#admin'

  
  
  get 'admin', to: 'sessions#new'
  post 'admin', to: 'sessions#create'

  get 'logout', to: 'sessions#destroy'
  
end

