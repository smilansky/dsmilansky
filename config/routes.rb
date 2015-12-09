Dsmilansky::Application.routes.draw do
  root to: 'pages#home'


  get 'home', to: 'pages#home'
  
  get 'fun', to: 'pages#fun'
  get 'fun/gameoflife', to: 'pages#gameoflife', as: 'gameoflife'

  post 'create_contact', to: 'pages#create_contact'
end

