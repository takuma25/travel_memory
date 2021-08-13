class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @post_images = @user.articles.page(params[:page]).reverse_order
  end

  def edit

  end

  def complete

  end

  def update

  end

end