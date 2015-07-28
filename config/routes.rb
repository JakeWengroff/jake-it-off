Rails.application.routes.draw do
  
devise_for :users
  
get 'welcome/index'
get 'welcome/about'
root to: 'users#show'
  
post :incoming, to: 'incoming#create'

resources :users, only: [:show] 
  
end
