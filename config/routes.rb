Rails.application.routes.draw do
  devise_for :users
  root "static_pages#index"
  get "/help" => "static_pages#help"
  get "/about" => "static_pages#about"
  resources :users

  namespace :admin do
    root "static_pages#index", as: :admin
    resources :question
  end
end
