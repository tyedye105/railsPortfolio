Rails.application.routes.draw do
  devise_for :users
  resources :landing, :only =>'index'
  resources :users, :only => [:show, :index]
  root "landing#index"
end
