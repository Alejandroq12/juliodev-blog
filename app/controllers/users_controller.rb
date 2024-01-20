class UsersController < ApplicationController
  def index
    @users = User.includes(:posts).all
  end

  def show
    @user = User.includes(:posts).find(params[:id])
    @posts = User.recent_posts(@user.id)
  end
end
