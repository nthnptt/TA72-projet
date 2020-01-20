# frozen_string_literal: true

Rails.application.routes.draw do
  get 'homepage/index'
  root 'homepage#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :users, only: %i[show] do
    put :like, on: :member
    put :unlike, on: :member
    get :offers, on: :member
    resources :comments
  end
  resources :offers do
    resources :proposition, only: %i[index create show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
