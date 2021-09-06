class ArticlesController < ApplicationController
  before_action :set_parents

  def show
    @post_image = Article.find(params[:id])
    @post_comment = ArticleComment.new
  end

  def new
   @post_image = Article.new
  end

  def create
    @post_image = Article.new(post_image_params)
    @post_image.user_id = current_user.id
    if @post_image.save
      landmark = Vision.get_image_data(@post_image.image)
      latitude = landmark["locations"][0]["latLng"]["latitude"]
      longitude = landmark["locations"][0]["latLng"]["longitude"]
      @post_image.update(description: landmark["description"], latitude: latitude, longitude: longitude)
      redirect_to article_path(@post_image.id)
    else
      render :new
    end
  end

  def destroy
    @post_image = Article.find(params[:id])
    @post_image.destroy
    redirect_to user_path(current_user)
  end

  private

  def post_image_params
    params.require(:article).permit(:image, :title, :body, :category_id)
  end

  def set_parents
    @parents = Category.where(ancestry: nil)
  end

end