Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books, except: [:new] do
  resource :favorites, only: [:create, :destroy]
  resources :book_comments, only: [:create, :destroy]
end
end