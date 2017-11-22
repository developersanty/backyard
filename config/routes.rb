Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  resources :tags
  resources :taggings, only: [:create, :destroy]

  resources :blocks
  resources :users, :only => [:show, :create, :update, :destroy]
  resources :sessions
  resources :analytics
  delete '/taggings', to: 'taggings#destroy'
  get 'blocks/:id/tags', to: 'blocks#tags'
end
