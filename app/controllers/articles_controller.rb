class ArticlesController < ApplicationController

  def show
    @post_image = Article.find(params[:id])
    @post_comment = ArticleComment.new
  end

  def new
   @post_image = Article.new
   
   @category = Category.all.order("id ASC").limit(8)

  end

  def comfirm

  end

  def create
    @post_image = Article.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to articles: :new
  end

  def destroy
    @post_image = Article.find(params[:id])
    @post_image.destroy
    redirect_to articles_path
  end


  private

  def post_image_params
    params.require(:article).permit(:image, :title, :body)
  end

end