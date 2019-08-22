Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :tutorials
  resources :lessons, only: [:create]

  # get '/tutorials/searched_tutorials', to: 'tutorials#searched_tutorials', as: 'searched_tutorials'

  get '/:username', to: 'pages#user_dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
