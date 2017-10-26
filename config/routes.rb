Rails.application.routes.draw do
  root "pages#home"

  devise_for :users

  namespace :api do
    resources :matches
  end

end
