Rails.application.routes.draw do
  devise_for :users
  resources :tags
  resources :comments
  resources :boards
  resources :pins do
    resources :comments, only: [:index, :new, :create]
  end
  root 'pins#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
