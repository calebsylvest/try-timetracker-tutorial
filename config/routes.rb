Rails.application.routes.draw do
  root to: 'base#index'
  resources :accounts
end
