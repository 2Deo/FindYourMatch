Rails.application.routes.draw do
  root "users#index"

  devise_for :users

  resources :users, only: [:show, :index, :update] do
    resources :matches
  end

end
