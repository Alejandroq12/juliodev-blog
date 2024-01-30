class PostsController < ApplicationController
  before_action :set_user, only: %i[index new create]

  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.order(created_at: :desc).paginate(page: params[:page], per_page: 4)
    @posts.each(&:recent_comments)
  end

  def show
    @post = Post.find(params[:id])
    @current_user = current_user
    @post_author = User.find(params[:user_id])
    @recent_comments = @post.comments
    @comment = Comment.new
    @like = Like.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = @user.posts.build(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to user_posts_path(user_id: @user.id), notice: 'Post was successfylly saved' }
      else
        format.turbo_stream
        format.html { render :new }
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
