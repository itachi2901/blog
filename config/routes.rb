Rails.application.routes.draw do
  get     "login"    => "sessions#new"
  post    "login"    => "sessions#create"
  delete  "logout"   => "sessions#destroy"

  # get 'welcome/index'

  resources :articles do
    resources :comments
  end

  # get     "login"    => "welcome#index"
    root 'welcome#index'
    resources :users
end
