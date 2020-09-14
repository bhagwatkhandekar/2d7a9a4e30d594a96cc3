Rails.application.routes.draw do
  resources :questions
  root 'users#index'
  resources :answers
  resources :topics
  resources :users
end
