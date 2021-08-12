class ArticlesController < ApplicationController

  def set_parents
    @parents = Category.where(ancestry: nil)
  end

  def get_category_children
    @category_children = Category.find("#{params[:parent_id]}").children
  end

  def get_category_grandchildren
    @category_grandchildren = Category.find("#{params[:child_id]}").children
  end


  def show
    @post_image = Article.find(params[:id])
    @post_comment = ArticleComment.new
  end

  def new
   @post_image = Article.new
   #@parents = Category.where(ancestry: nil)
   #@parents = Category.all.order("id ASC").limit(8)

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