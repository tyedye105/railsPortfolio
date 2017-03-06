Rails.application.routes.draw do
  devise_for :users
  resources :landing, :only =>'index'
  resources :users, :only => [:show, :index]
  resources :users do
    resources :posts, :only =>[:new, :create, :edit, :update, :destroy]
  end
  resources :posts, :only => [:index, :show]
  resources :projects, :only => 'index'
  root "landing#index"
end
