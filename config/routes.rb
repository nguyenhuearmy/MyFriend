Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :friends
  authenticated :user do
    root 'friends#index', as: "authenticated_root"
  end
  root 'welcome#index'
end
