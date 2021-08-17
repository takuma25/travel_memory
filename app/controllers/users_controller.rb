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
    @user = User.find(params[:id])
    @user.update(edit_user_params)
    redirect_to user_path(@user.id)
  end
  
   private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end


end