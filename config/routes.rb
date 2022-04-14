Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :cameras

  resources :rates, :only => [:index, :edit, :update, :show, :destroy, :create]
  get '/cameras/:id/rates/new' => 'rates#new', :as => 'new_rate'
  # post '/cameras/:id/rates/new' => 'rates#create', :as => 'create_rate'
  
end
