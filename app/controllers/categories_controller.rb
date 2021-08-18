class CategoriesController < ApplicationController

  def show
    @all_ranks = Article.find(Like.group(:article_id).order('count(article_id) desc').pluck(:article_id))
    @post_ranks = @all_ranks.select{ |article| article.category_id == params[:category_id] }
  end

end