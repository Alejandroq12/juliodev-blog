class CommentsController < ApplicationController
  before_action :set_user, only: %i[new create]
  before_action :set_post, only: %i[new create]

  def new
    @comment = Comment.new
  end

  def create
    @comment = @post.comments.build(comment_params)
    @comment.user = @user

    if @comment.save
      flash[:success] = 'Comment created successfully!'
      redirect_to user_post_comments_path(current_user, @post)
    else
      flash[:error] = 'Comment could not be saved.'
      render :new
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end
