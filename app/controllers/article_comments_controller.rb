class ArticleCommentsController < ApplicationController

  def create
    @post_image = Article.find(params[:article_id])
    comment = current_user.article_comments.new(article_comment_params)
    comment.article_id = @post_image.id
    comment.save
    redirect_to article_path(@post_image)
  end

  def destroy
    #binding.pry
    ArticleComment.find_by(id: params[:id],article_id: params[:article_id]).destroy
    # @post_image = Article.find(params[:article_id])
    # comment = article_comment.find_by(article_id: params[:article_id])
    #comment = ArticleComment.find(params[:id])
    #comment = ArticleComment.find(id: params[:id], article_id: params[:article_id])
    # comment.destroy
    #redirect_to article_path(params[:article_id])
  end

  private

  def article_comment_params
    params.permit(:text)
  end

end