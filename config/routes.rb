Rails.application.routes.draw do
  get 'homepage/index'
  root 'homepage#index'
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
  }
  resources :users, only: %i(show) do
    put :like, on: :member
    put :unlike, on: :member
  end
  resources :offers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
