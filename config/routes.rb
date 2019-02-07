Rails.application.routes.draw do
  resources :yummies
  devise_for :users
  resources :categories

  root to: 'yummies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
