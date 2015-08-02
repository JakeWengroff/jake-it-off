Rails.application.routes.draw do

devise_for :users
  
get 'welcome/index'
get 'welcome/about'
root to: 'users#show'

resources :users, only: [:show] do
  resources :items, only: [:create]
end

end
