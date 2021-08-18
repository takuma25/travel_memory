class LikesController < ApplicationController

  def index
    @all_ranks = Article.find(Like.group(:article_id).order('count(article_id) desc').limit(3).pluck(:article_id))

  end

  def create
    post_image = Article.find(params[:article_id])
    like = current_user.likes.new(article_id: post_image.id)
    like.save
    redirect_to article_path(post_image)

  end

  def destroy
    post_image = Article.find(params[:id])
    like = current_user.likes.find_by(article_id: post_image.id)
    like.destroy
    redirect_to article_path(post_image)

  end

end