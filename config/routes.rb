Rails.application.routes.draw do
  resources :tasks do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root controller: :application, action: :index

  post '/login', to: 'application#login'
  get '/logout', to: 'application#logout'

end
