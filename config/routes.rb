Rails.application.routes.draw do
  root 'page#index'

    get '/secret' => 'page#secret'

    get '/register' => 'users#new'
    resources :users

    # These routes will be for showing a login form, logging in, and logging out
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'

    get '/equipment' => 'equipment#select'
    post '/assign_equipment' => 'equipment#assign_equipment'
end
