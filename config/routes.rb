Rails.application.routes.draw do
  

  namespace :admin do
    resources :users
    resources :blogs

    root to: "users#index"
  end

  devise_for :users
  get 'pages/about'

  resources :blogs
  root to: "pages#home"
end
