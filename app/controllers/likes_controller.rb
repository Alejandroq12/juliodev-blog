class LikesController < ApplicationController
  before_action :set_user, only: [:create]
  before_action :set_post, only: [:create]

  def create
    @like = @post.likes.build(user: @user)

    if @like.save
      flash[:success] = 'Post liked successfully!'
    else
      flash[:error] = 'Could not like the post.'
      redirect_to user_post_likes_path(@user, @post)
    end
    redirect_to user_post_likes_path(@user, @post)
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
