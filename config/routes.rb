Rails.application.routes.draw do
  devise_for :users
  root to: "base#index"
  resources :accounts
end
