Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  
  resources :messages
  resources :users_conversations
  resources :notes
  resources :conversations
  resources :owner_images
  resources :shared_images
  resources :reviews
  resources :comments
  resources :food_informations
  resources :foods
  resources :sources
  resources :users
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'top_pages#show'
end
