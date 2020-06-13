Rails.application.routes.draw do

  devise_for :admins
  root to: 'home#index'
  resources :home, only: :index
  resources :about, only: :index
  resources :works, only: :index
  resources :posts
  resources :blogs, only: [:index, :show]
 

end

