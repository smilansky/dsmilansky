Dsmilansky::Application.routes.draw do
  root to: 'pages#home'

  mount Blogdiggity::Engine => "/blog", as: "blog"
  
  get 'home', to: 'pages#home'
  get 'projects', to: 'pages#projects'
end

