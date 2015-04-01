Dsmilansky::Application.routes.draw do
  root to: 'pages#home'


  get 'home', to: 'pages#home'
  get 'work', to: 'pages#work'
  get 'contact', to: 'pages#contact'
end

