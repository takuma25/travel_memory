Rails.application.routes.draw do
    
  devise_for :users

    root to:'homes#top'
    
    resources :users, onry: [:show, :edit, :update]
    
    resources :articles, onry: [:show, :new, :create]
    
    resources :likes, onry: [:index, :create, :destroy]
    
    resources :categories, onry: [:show]
    
    resources :article_comments, onry: [:create, :destroy]
    
end
