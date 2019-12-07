Rails.application.routes.draw do
  resources :tag_associations
  resources :tags, only: [:index, :new, :edit]
  resources :categories, only: [:index, :new, :edit]
  resources :tasks
  devise_for :users
  root 'tasks#index'
  get 'tags/:tag',  to: 'tasks#index', as: :tag
  get 'categories/:category',  to: 'tasks#index', as: :category
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
