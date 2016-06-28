Rails.application.routes.draw do

  root 'pages#home'

  get 'pages/home'

  get 'pages/help'

  get 'pages/about'

  get 'pages/contact'

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
