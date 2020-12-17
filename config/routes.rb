Rails.application.routes.draw do
  devise_for :users
  # get 'animals/index'
  root to: "animals#index"
  resources :users, only: :show
end
