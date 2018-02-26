Rails.application.routes.draw do
  get 'pages/index'

  get 'pages/show'

  get 'pages/new'

  resources :pages   #this replaced 3 lines of code, 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
