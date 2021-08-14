class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @articles = @user.articles.page(params[:page]).reverse_order
  end

  def edit
    @user = User.find(params[:id])
  end

  def complete

  end

  def update

  end

end