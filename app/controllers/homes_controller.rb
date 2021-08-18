class HomesController < ApplicationController
  
  def top
    @article = Article.limit(10).order(" created_at DESC ")
    
    @all_ranks = Article.find(Like.group(:article_id).order('count(article_id) desc').limit(3).pluck(:article_id))
  end
  
end