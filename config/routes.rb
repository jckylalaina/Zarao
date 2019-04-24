Rails.application.routes.draw do
  get 'multiplications/index'
  get '/req/:id',to:'pools#req'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :spaces
  resources :notes
  resources :tasks
  resources :pools
  #envoyer la valeur post de l ajax dans pool req
  
  root to: 'homes#index'
  get 'homes/show'
  get '/homes/about'
   
  post '/tasks/show',to:'notes#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'spaces/index',to:'spaces#groupe'
  resources :homes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
