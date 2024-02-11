Rails.application.routes.draw do
  devise_for :users

  root to: "prototypes#index"
  resources :prototypes, only: [:destroy, :new, :create, :show, :edit, :update] do
    resources :comments, only: :create 
  end
  resources :users, only: :show
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
