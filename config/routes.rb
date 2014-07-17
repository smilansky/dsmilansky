Dsmilansky::Application.routes.draw do
  root to: 'pages#home'

  get 'home', to: 'pages#home'
  get 'projects', to: 'pages#projects'
  match "/blog" => redirect("/blog/")

end

