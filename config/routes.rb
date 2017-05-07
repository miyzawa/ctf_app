Rails.application.routes.draw do
  root "static_pages#index"
  get "/help" => "static_pages#help"
  get "/about" => "static_pages#about"
  get "/ranking" => "users#index"
  devise_for :users
  resources :questions, only: [:index, :show]
  namespace :admin do
    root "static_pages#index", as: :admin
    resources :questions
  end
end
