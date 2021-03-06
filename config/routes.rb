Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'givers#new'
  delete '/logout' => 'sessions#destroy'

  resources :gifts
  resources :recipients 

  resources :givers

end
