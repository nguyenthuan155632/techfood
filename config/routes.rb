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
  resources :foods do
    collection do
      resource :import, controller: 'foods/imports', as: :food_import, only: %i[new create]
    end
  end
  resources :sources
  resources :users
  resources :categories
  resources :categories_foods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'top_pages#show'

  resources :search_by_keywords, as: :search_by_keywords, only: %i[index]
  resources :search_by_locations, as: :search_by_locations, only: %i[index]
end
