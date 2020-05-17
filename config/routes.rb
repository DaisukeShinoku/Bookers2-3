Rails.application.routes.draw do
# 一番上に上げたらうまく動いた、理由不明
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
  	resources :book_comments, only: [:create, :destroy]
  	resource :favorites, only: [:create, :destroy]
  end
  get 'home/about' => 'home#about'
  root to: 'home#top'
end
