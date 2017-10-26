Rails.application.routes.draw do
  root "users#home"

  devise_for :users

  resources :users, only: [:show, :home, :update] do
    resources :matches
  end

end
