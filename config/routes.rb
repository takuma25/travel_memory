Rails.application.routes.draw do
    
  devise_for :users

    root to:'homes#top'
    
    resources :users, onry: [:show, :edit, :update]
    post 'usres/complete' => 'usres/complete' ,as: 'complete'
    
    resources :articles, onry: [:show, :new, :create]
    post '/articles/comfirm' => '/articles/comfirm' ,as: 'comfirm'
    
    resources :likes, onry: [:index, :create, :destroy]
    
    resources :categories, onry: [:show]
    
    resources :article_comments, onry: [:create, :destroy]
    
    #resources :post_images, only: [:new, :create, :index, :show, :destroy]
    
end
