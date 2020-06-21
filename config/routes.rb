Rails.application.routes.draw do
  # mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  devise_for :admins

  root to: 'contacts#index'
  resources :contacts
  resources :about, only: :index
  resources :works, only: :index
  resources :posts
  resources :blogs, only: [:index, :show]
 

end

