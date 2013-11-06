Dsmilansky::Application.routes.draw do
  root to: 'pages#home'

  get 'home', to: 'pages#home'

end
