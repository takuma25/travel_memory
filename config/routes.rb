Rails.application.routes.draw do

  devise_for :users

    root to:'homes#top'

    resources :articles, onry: [:show, :new, :create]do
      resources :article_comments, only: [:create, :destroy]
      post 'articles/show' => 'articles#show'
    end

    resources :users, onry: [:show, :edit, :update,]
    post 'usres/complete' => 'usres#complete' ,as: 'complete'

    resources :likes, onry: [:index, :create, :destroy]

    resources :categories, onry: [:show]

    #resources :article_comments, onry: [:create, :destroy]


end
