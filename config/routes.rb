Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Get “bands/search” , to: "bands#search"
  Get “bands/filter” , to: "bands#filter"
  Get “dashboard” ,  to: "pages#dashboard"

  get "bands/search" , to: "bands#search"
  get "bands/filter" , to: "bands#filter"
  get "dashboard" ,  to: "pages#dashboard"
  resources :conversations , only: [:index, :show, :create] do
    resources :messages , only: [:create]
  end
  get "users/search", to: "users#search"
  get "users/filter" , to: "users#filter"
  resources :bands , only: [:index, :show, :edit, :create, :update, :new]
end
