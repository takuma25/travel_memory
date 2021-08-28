class HomesController < ApplicationController
  
  def top
    @article = Article.limit(5).order(" created_at DESC ")
    @all_ranks = Article.find(Like.group(:article_id).order('count(article_id) desc').limit(5).pluck(:article_id))
  end
  
end