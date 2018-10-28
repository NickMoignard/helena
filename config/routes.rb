Rails.application.routes.draw do
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/welcome', to: 'main#welcome'
  get '/login',  to: 'main#login'
  get '/show',  to: 'main#show'
  get '/program',  to: 'main#program'

  root  'main#welcome'

end
