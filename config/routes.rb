Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  get "home/about"=>"homes#about"
  root to: "homes#top"

  resources :books, only: [:index,:show,:edit,:create,:destroy,:update] do
    resources :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  
  resources :users, only: [:index,:show,:edit,:update]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
