Rails.application.routes.draw do
  devise_for :users

  mount ActionCable.server => '/cable'

  root to: 'pages#home', as: "home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "bands/search", to: "bands#search" ,as: "search"
  get "bands", to: "bands#index"
  get "bands/filter", to: "bands#filter", as: "filter"
  get "bands/mybands", to: "bands#mybands", as: "mybands"
  get "dashboard",  to: "pages#dashboard"
  get "edit_profile", to: "pages#edit", as: "edit"
  resources :conversations , only: [:index, :show, :create] do
  end
  resources :messages , only: [:create]

  get "users/search", to: "users#search"
  get "users/filter" , to: "users#filter"
  resources :bands , only: [:show, :edit, :create, :update, :new]
end
