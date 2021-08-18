Rails.application.routes.draw do

  devise_for :users

    root to:'homes#top'

    resources :articles, only: [:show, :new, :create, :destroy]do
      resources :article_comments, only: [:create, :destroy]
    end

    resources :users, only: [:show, :edit, :update]
    #post 'usres/complete' => 'usres#complete' ,as: 'complete'

    resources :likes, only: [:index, :create, :destroy]

    resource :categories, params: :category_id, only: [:show]



end
