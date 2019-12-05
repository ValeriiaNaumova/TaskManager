Rails.application.routes.draw do
  resources :tag_associations
  resources :tags
  resources :categories
  resources :tasks
  devise_for :users
  root 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
