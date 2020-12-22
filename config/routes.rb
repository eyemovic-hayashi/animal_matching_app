Rails.application.routes.draw do
  devise_for :user
  resources :users, only: [:show, :edit, :update]
  root to: "animals#index"
  resources :animals

end
