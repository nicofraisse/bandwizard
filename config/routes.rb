Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Get “bands/search” , to: "bands#search"
  Get “bands/filter” , to: "bands#filter"
  Get “dashboard” ,  to: "pages#dashboard"
  Resources :conversations , only [:index, :show, :create] do {
  Resources :messages , only [:create]
  }
  Get “users/search”, to: "users#search"
  Get “users/filter” , to: "users#filter"
  Resources : bands , only [:index, :show, :edit, :create, :update, :new]
end
