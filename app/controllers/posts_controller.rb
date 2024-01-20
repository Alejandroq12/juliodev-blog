class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.includes(:author, :comments, :likes)
  end

  def show
    @post = Post.find(params[:id])
    @recent_comments = Post.recent_comments(@post.id)
  end
end
