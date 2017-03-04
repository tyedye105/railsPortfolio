Rails.application.routes.draw do
  devise_for :users
  resources :landing, :only =>'index'
  resources :users, :only => [:show, :index]
  resources :users do
    resources :post
  end
  root "landing#index"
end
