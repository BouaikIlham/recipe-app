# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

 resources :foods
 resources :recipes, only: [:index, :new, :create, :show, :destroy]

 resources :public_recipes, only: [:index]
  root to: 'home#index'
end
