Rails.application.routes.draw do

  get 'chats/index'

 root 'toppages#index'
 
 get 'login', to: 'sessions#new'
 post 'login', to: 'sessions#create'
 delete 'logout', to: 'sessions#destroy'
 
 get 'signup', to: 'users#new'
 resources :users, only: [:index, :new, :create]

 get 'business_statues/new', to: 'business_statues#new'
 get 'business_statues/:id', to: 'business_statues#show'
 post 'business_statues', to: 'business_statues#create'
 put 'business_statues/:id', to: 'business_statues#update'
 delete 'business_statues/:id', to: 'business_statues#destroy'
 get 'business_statues', to: 'business_statues#index'
 get 'business_statues/:id/edit', to: 'business_statues#edit'
 
 resources :business_statues
 

 
 
 get '/chats', to: 'chats#index'
 resources :chats, only: [:index]

get "hello" => "hello#view" #追加
end


