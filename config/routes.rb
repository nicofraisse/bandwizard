Rails.application.routes.draw do
  devise_for :users

  mount ActionCable.server => '/cable'

  resources :conversations, param: :user2_id
  resources :messages

  root to: 'pages#home', as: "home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "bands/search", to: "bands#search" ,as: "search"
  get "bands", to: "bands#index"
  get "musicians", to: "bands#musicians"
  get "bands/filter", to: "bands#filter", as: "filter"
  get "bands/mybands", to: "bands#mybands", as: "mybands"
  get "dashboard/:user_id",  to: "pages#dashboard", as: 'dashboard'
  get "public_profile/:user_id",  to: "pages#public_profile", as: :public_profile
  get "edit_profile", to: "pages#edit", as: "edit"


  get "users/search", to: "users#search"
  get "users/filter" , to: "users#filter"
  resources :bands , only: [:show, :edit, :create, :update, :new]
end
